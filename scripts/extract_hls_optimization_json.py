import os
import sys
import glob
import json
import re
import xml.etree.ElementTree as ET

def first_text(root, paths):
    for p in paths:
        node = root.find(p)
        if node is not None and node.text and node.text.strip():
            return node.text.strip()
    return None

def as_float(x):
    try:
        return float(x)
    except Exception:
        return None

def as_int(x):
    try:
        return int(float(x))
    except Exception:
        return None

def infer_case_from_xml(xml_file):
    filename = os.path.basename(xml_file)
    path_norm = xml_file.replace("\\", "/")

    m = re.search(r"blur_opt_(base|bitwidth|pipeline|pipeline_unroll|pipeline_unroll_partition|dataflow|final)_csynth\.xml", filename)
    if m:
        case_tag = f"opt_{m.group(1)}"
        return case_tag

    m = re.search(r"blur_opt_(base|bitwidth|pipeline|pipeline_unroll|pipeline_unroll_partition|dataflow|final)_proj", path_norm)
    if m:
        case_tag = f"opt_{m.group(1)}"
        return case_tag

    return "opt_unknown"

def parse_one_xml(xml_file):
    tree = ET.parse(xml_file)
    root = tree.getroot()

    case_tag = infer_case_from_xml(xml_file)

    target_clock_ns = as_float(first_text(root, [
        ".//TargetClockPeriod",
        ".//UserAssignments/TargetClockPeriod"
    ]))

    estimated_clock_ns = as_float(first_text(root, [
        ".//EstimatedClockPeriod",
        ".//PerformanceEstimates/SummaryOfTimingAnalysis/EstimatedClockPeriod"
    ]))

    latency_best_cycles = as_int(first_text(root, [
        ".//Best-caseLatency",
        ".//SummaryOfOverallLatency/Best-caseLatency"
    ]))

    latency_avg_cycles = as_int(first_text(root, [
        ".//Average-caseLatency",
        ".//SummaryOfOverallLatency/Average-caseLatency"
    ]))

    latency_worst_cycles = as_int(first_text(root, [
        ".//Worst-caseLatency",
        ".//SummaryOfOverallLatency/Worst-caseLatency"
    ]))

    interval_min = as_int(first_text(root, [
        ".//Interval-min",
        ".//SummaryOfOverallLatency/Interval-min"
    ]))

    interval_max = as_int(first_text(root, [
        ".//Interval-max",
        ".//SummaryOfOverallLatency/Interval-max"
    ]))

    bram = as_int(first_text(root, [".//BRAM_18K", ".//AreaEstimates/Resources/BRAM_18K"]))
    dsp  = as_int(first_text(root, [".//DSP", ".//AreaEstimates/Resources/DSP"]))
    ff   = as_int(first_text(root, [".//FF", ".//AreaEstimates/Resources/FF"]))
    lut  = as_int(first_text(root, [".//LUT", ".//AreaEstimates/Resources/LUT"]))
    uram = as_int(first_text(root, [".//URAM", ".//AreaEstimates/Resources/URAM"]))

    latency_ms_best = None
    latency_ms_avg = None
    latency_ms_worst = None

    if estimated_clock_ns is not None:
        if latency_best_cycles is not None:
            latency_ms_best = (latency_best_cycles * estimated_clock_ns) / 1e6
        if latency_avg_cycles is not None:
            latency_ms_avg = (latency_avg_cycles * estimated_clock_ns) / 1e6
        if latency_worst_cycles is not None:
            latency_ms_worst = (latency_worst_cycles * estimated_clock_ns) / 1e6

    return {
        "implementation": "hls_optimization",
        "case": case_tag,
        "report_file": xml_file.replace("\\", "/"),
        "target_clock_ns": target_clock_ns,
        "estimated_clock_ns": estimated_clock_ns,
        "latency_cycles_best": latency_best_cycles,
        "latency_cycles_avg": latency_avg_cycles,
        "latency_cycles_worst": latency_worst_cycles,
        "latency_ms_best": latency_ms_best,
        "latency_ms_avg": latency_ms_avg,
        "latency_ms_worst": latency_ms_worst,
        "interval_cycles_min": interval_min,
        "interval_cycles_max": interval_max,
        "resources": {
            "BRAM_18K": bram,
            "DSP": dsp,
            "FF": ff,
            "LUT": lut,
            "URAM": uram
        }
    }

if len(sys.argv) != 2:
    print("Usage: python scripts/extract_hls_optimization_json.py <hls_optimization_root>")
    print("Example: python scripts/extract_hls_optimization_json.py hls_optimization")
    sys.exit(1)

hls_root = sys.argv[1]
xml_files = glob.glob(os.path.join(hls_root, "**", "*csynth.xml"), recursive=True)

if not xml_files:
    print("Error: no csynth.xml files found under:", hls_root)
    sys.exit(1)

cases = []
for xml_file in xml_files:
    try:
        summary = parse_one_xml(xml_file)
        cases.append(summary)
    except Exception as e:
        print(f"Warning: failed to parse {xml_file}: {e}")

if not cases:
    print("Error: no valid optimization summaries parsed.")
    sys.exit(1)

order = {
    "opt_base": 0,
    "opt_bitwidth": 1,
    "opt_pipeline": 2,
    "opt_pipeline_unroll": 3,
    "opt_pipeline_unroll_partition": 4,
    "opt_dataflow": 5,
    "opt_final": 6
}
cases.sort(key=lambda x: order.get(x["case"], 999))

os.makedirs("results/hls_optimization", exist_ok=True)

for case in cases:
    out_file = f"results/hls_optimization/hls_{case['case']}_summary.json"
    with open(out_file, "w") as f:
        json.dump(case, f, indent=2)
    print("Saved", out_file)

combined = {
    "implementation": "hls_optimization",
    "cases": cases
}

with open("results/hls_optimization/hls_optimization_summary.json", "w") as f:
    json.dump(combined, f, indent=2)

print("Saved results/hls_optimization/hls_optimization_summary.json")
