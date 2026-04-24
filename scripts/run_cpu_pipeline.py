from PIL import Image
import os
import sys
import subprocess
import json

SIZES = [256, 512, 1024]
CASES = [
    ("box", 3),
    ("box", 5),
    ("gaussian", 3),
    ("gaussian", 5),
]

def ensure_dirs():
    os.makedirs("images", exist_ok=True)
    os.makedirs("results/cpu", exist_ok=True)

def make_inputs(source_image):
    img = Image.open(source_image).convert("L")

    for size in SIZES:
        resized = img.resize((size, size))
        resized.save(f"images/input_{size}.pgm")
        resized.save(f"images/input_{size}.png")
        print(f"[OK] Created images/input_{size}.pgm")
        print(f"[OK] Created images/input_{size}.png")

def run_command(cmd, cwd=None):
    result = subprocess.run(
        cmd,
        cwd=cwd,
        shell=True,
        capture_output=True,
        text=True
    )
    if result.returncode != 0:
        print(result.stdout)
        print(result.stderr)
        raise RuntimeError(f"Command failed: {cmd}")
    return result.stdout

def compile_cpu():
    try:
        run_command("make", cwd="cpu_baseline")
        return
    except Exception:
        pass

    try:
        run_command("mingw32-make", cwd="cpu_baseline")
        return
    except Exception:
        pass

    raise RuntimeError("Could not compile CPU code with make or mingw32-make.")

def case_tag(filter_name, kernel_size):
    return f"{filter_name}{kernel_size}"

def cpu_executable():
    return "blur_cpu.exe" if os.name == "nt" else "./blur_cpu"

def rel_input_path(size):
    return f"..\\images\\input_{size}.pgm" if os.name == "nt" else f"../images/input_{size}.pgm"

def rel_output_path(size, filter_name, kernel_size):
    tag = case_tag(filter_name, kernel_size)
    return (
        f"..\\images\\output_{size}_{tag}_cpu.pgm"
        if os.name == "nt"
        else f"../images/output_{size}_{tag}_cpu.pgm"
    )

def rel_json_path(size, filter_name, kernel_size):
    tag = case_tag(filter_name, kernel_size)
    return (
        f"..\\results\\cpu\\cpu_{tag}_{size}_summary.json"
        if os.name == "nt"
        else f"../results/cpu/cpu_{tag}_{size}_summary.json"
    )

def abs_output_pgm(size, filter_name, kernel_size):
    tag = case_tag(filter_name, kernel_size)
    return f"images/output_{size}_{tag}_cpu.pgm"

def abs_output_png(size, filter_name, kernel_size):
    tag = case_tag(filter_name, kernel_size)
    return f"images/output_{size}_{tag}_cpu.png"

def abs_json(size, filter_name, kernel_size):
    tag = case_tag(filter_name, kernel_size)
    return f"results/cpu/cpu_{tag}_{size}_summary.json"

def run_cpu_case(size, filter_name, kernel_size):
    exe = cpu_executable()
    input_file = rel_input_path(size)
    output_file = rel_output_path(size, filter_name, kernel_size)
    summary_file = rel_json_path(size, filter_name, kernel_size)

    cmd = (
        f'{exe} "{input_file}" "{output_file}" '
        f'{filter_name} {kernel_size} "{summary_file}"'
    )

    stdout = run_command(cmd, cwd="cpu_baseline")
    print(stdout)

    # Make PNG preview from the generated PGM
    img = Image.open(abs_output_pgm(size, filter_name, kernel_size))
    img.save(abs_output_png(size, filter_name, kernel_size))

    # Optional sanity check: confirm JSON was created and can be read
    with open(abs_json(size, filter_name, kernel_size), "r") as f:
        summary = json.load(f)

    print(f"[OK] Created {abs_output_png(size, filter_name, kernel_size)}")
    print(f"[OK] Created {abs_json(size, filter_name, kernel_size)}")
    print(
        f"[OK] Summary: "
        f"filter={summary['filter']}, "
        f"kernel={summary['kernel_size']}, "
        f"size={summary['width']}x{summary['height']}, "
        f"runtime_ms={summary['runtime_ms']}"
    )

def main():
    if len(sys.argv) != 2:
        print("Usage: python scripts/run_cpu_pipeline.py <source_image>")
        print("Example: python scripts/run_cpu_pipeline.py aerial.jpg")
        sys.exit(1)

    source_image = sys.argv[1]
    if not os.path.exists(source_image):
        print(f"Error: source image not found: {source_image}")
        sys.exit(1)

    ensure_dirs()
    make_inputs(source_image)
    compile_cpu()

    for size in SIZES:
        for filter_name, kernel_size in CASES:
            run_cpu_case(size, filter_name, kernel_size)

    print("\nDone.")
    print("Generated:")
    print("  images/input_<size>.pgm")
    print("  images/input_<size>.png")
    print("  images/output_<size>_<filter><kernel>_cpu.pgm")
    print("  images/output_<size>_<filter><kernel>_cpu.png")
    print("  results/cpu/cpu_<filter><kernel>_<size>_summary.json")

if __name__ == "__main__":
    main()