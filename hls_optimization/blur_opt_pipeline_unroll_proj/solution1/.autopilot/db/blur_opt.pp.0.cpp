# 1 "blur_opt.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 422 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Xilinx/2025.2/Vitis/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
# 105 "C:/Xilinx/2025.2/Vitis/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
extern "C" {






    void _ssdm_op_IfRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_ReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Read(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_WriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Write(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_PrintNone(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintInt(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintDouble(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Return(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_Inline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecStable(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecStableContent(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBindPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipoDepth(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_DataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void __xilinx_ip_top(...) __attribute__ ((nothrow)) __attribute__((overloadable));


}
# 2 "<built-in>" 2
# 1 "blur_opt.cpp" 2
# 1 "./blur_opt.h" 1



# 1 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\lib\\gcc\\x86_64-w64-mingw32\\8.3.0\\include\\c++\\cstdint" 1 3
# 33 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\lib\\gcc\\x86_64-w64-mingw32\\8.3.0\\include\\c++\\cstdint" 3





# 1 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\lib\\gcc\\x86_64-w64-mingw32\\8.3.0\\include\\c++\\x86_64-w64-mingw32\\bits/c++config.h" 1 3
# 236 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\lib\\gcc\\x86_64-w64-mingw32\\8.3.0\\include\\c++\\x86_64-w64-mingw32\\bits/c++config.h" 3
namespace std
{
  typedef long unsigned int size_t;
  typedef long int ptrdiff_t;


  typedef decltype(nullptr) nullptr_t;

}
# 258 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\lib\\gcc\\x86_64-w64-mingw32\\8.3.0\\include\\c++\\x86_64-w64-mingw32\\bits/c++config.h" 3
namespace std
{
  inline namespace __cxx11 __attribute__((__abi_tag__ ("cxx11"))) { }
}
namespace __gnu_cxx
{
  inline namespace __cxx11 __attribute__((__abi_tag__ ("cxx11"))) { }
}
# 508 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\lib\\gcc\\x86_64-w64-mingw32\\8.3.0\\include\\c++\\x86_64-w64-mingw32\\bits/c++config.h" 3
# 1 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\lib\\gcc\\x86_64-w64-mingw32\\8.3.0\\include\\c++\\x86_64-w64-mingw32\\bits/os_defines.h" 1 3
# 509 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\lib\\gcc\\x86_64-w64-mingw32\\8.3.0\\include\\c++\\x86_64-w64-mingw32\\bits/c++config.h" 2 3


# 1 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\lib\\gcc\\x86_64-w64-mingw32\\8.3.0\\include\\c++\\x86_64-w64-mingw32\\bits/cpu_defines.h" 1 3
# 512 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\lib\\gcc\\x86_64-w64-mingw32\\8.3.0\\include\\c++\\x86_64-w64-mingw32\\bits/c++config.h" 2 3
# 39 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\lib\\gcc\\x86_64-w64-mingw32\\8.3.0\\include\\c++\\cstdint" 2 3


# 1 "C:\\Xilinx\\2025.2\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\stdint.h" 1 3
# 52 "C:\\Xilinx\\2025.2\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\stdint.h" 3
# 1 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\stdint.h" 1 3
# 28 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\stdint.h" 3
# 1 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 1 3
# 10 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
# 1 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 1 3
# 12 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
# 1 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include/_mingw_mac.h" 1 3
# 13 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 1 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include/_mingw_secapi.h" 1 3
# 44 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include/_mingw_secapi.h" 3
extern "C++" {
template <bool __test, typename __dsttype>
  struct __if_array;
template <typename __dsttype>
  struct __if_array <true, __dsttype> {
    typedef __dsttype __type;
};
}
# 14 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 282 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
# 1 "C:\\Xilinx\\2025.2\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\vadefs.h" 1 3
# 12 "C:\\Xilinx\\2025.2\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\vadefs.h" 3
# 1 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\vadefs.h" 1 3








# 1 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 1 3
# 595 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
# 1 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include/sdks/_mingw_directx.h" 1 3
# 596 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 1 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include/sdks/_mingw_ddk.h" 1 3
# 597 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 10 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\vadefs.h" 2 3




#pragma pack(push,_CRT_PACKING)



extern "C" {





  typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 99 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\vadefs.h" 3
}



#pragma pack(pop)
# 13 "C:\\Xilinx\\2025.2\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\vadefs.h" 2 3
# 283 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 558 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
extern "C" {
# 569 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{
  __asm__ __volatile__("int {$}3":);
}




const char *__mingw_get_crt_info (void);


}
# 11 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 35 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef unsigned long size_t;
# 45 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef long ssize_t;






typedef size_t rsize_t;
# 62 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef long intptr_t;
# 75 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef unsigned long uintptr_t;
# 88 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef long ptrdiff_t;
# 106 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long __time64_t;
# 138 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
typedef __time64_t time_t;
# 422 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {
  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;
} threadlocinfo;







#pragma pack(pop)
# 29 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\stdint.h" 2 3



# 1 "C:\\Xilinx\\2025.2\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\stddef.h" 1 3
# 33 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\stdint.h" 2 3


typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
__extension__ typedef long long int64_t;
__extension__ typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
__extension__ typedef long long int_least64_t;
__extension__ typedef unsigned long long uint_least64_t;





typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
__extension__ typedef long long int_fast64_t;
__extension__ typedef unsigned long long uint_fast64_t;


__extension__ typedef long long intmax_t;
__extension__ typedef unsigned long long uintmax_t;
# 53 "C:\\Xilinx\\2025.2\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\stdint.h" 2 3
# 42 "C:/Xilinx/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\lib\\gcc\\x86_64-w64-mingw32\\8.3.0\\include\\c++\\cstdint" 2 3




namespace std
{
  using ::int8_t;
  using ::int16_t;
  using ::int32_t;
  using ::int64_t;

  using ::int_fast8_t;
  using ::int_fast16_t;
  using ::int_fast32_t;
  using ::int_fast64_t;

  using ::int_least8_t;
  using ::int_least16_t;
  using ::int_least32_t;
  using ::int_least64_t;

  using ::intmax_t;
  using ::intptr_t;

  using ::uint8_t;
  using ::uint16_t;
  using ::uint32_t;
  using ::uint64_t;

  using ::uint_fast8_t;
  using ::uint_fast16_t;
  using ::uint_fast32_t;
  using ::uint_fast64_t;

  using ::uint_least8_t;
  using ::uint_least16_t;
  using ::uint_least32_t;
  using ::uint_least64_t;

  using ::uintmax_t;
  using ::uintptr_t;
}
# 5 "./blur_opt.h" 2

const int MAX_WIDTH = 1024;
const int MAX_HEIGHT = 1024;

void blur_opt_base(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
);

void blur_opt_bitwidth(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
);

void blur_opt_pipeline(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
);

__attribute__((sdx_kernel("blur_opt_pipeline_unroll", 0))) void blur_opt_pipeline_unroll(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
);

void blur_opt_pipeline_unroll_partition(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
);

void blur_opt_dataflow(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
);

void blur_opt_final(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
);
# 2 "blur_opt.cpp" 2

static const int BOX3_KERNEL[3][3] = {
    {1, 1, 1},
    {1, 1, 1},
    {1, 1, 1}
};

static void copy_image_plain(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    VITIS_LOOP_15_1: for (int y = 0; y < height; y++) {
        VITIS_LOOP_16_2: for (int x = 0; x < width; x++) {
            output[y][x] = input[y][x];
        }
    }
}

template <typename SumT>
static void linebuffer_box3_base(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    uint8_t linebuf[2][MAX_WIDTH] = {};
    uint8_t window[3][3] = {};

    copy_image_plain(input, output, width, height);
    if (width < 3 || height < 3) {
        return;
    }

    VITIS_LOOP_37_1: for (int y = 0; y < height; y++) {
        VITIS_LOOP_38_2: for (int x = 0; x < width; x++) {
            VITIS_LOOP_39_3: for (int r = 0; r < 3; r++) {
                VITIS_LOOP_40_4: for (int c = 0; c < 2; c++) {
                    window[r][c] = window[r][c + 1];
                }
            }

            window[0][2] = linebuf[1][x];
            window[1][2] = linebuf[0][x];
            window[2][2] = input[y][x];

            linebuf[1][x] = linebuf[0][x];
            linebuf[0][x] = input[y][x];

            if (y >= 2 && x >= 2) {
                SumT sum = 0;
                VITIS_LOOP_54_5: for (int ky = 0; ky < 3; ky++) {
                    VITIS_LOOP_55_6: for (int kx = 0; kx < 3; kx++) {
                        sum += static_cast<SumT>(window[ky][kx]) *
                               static_cast<SumT>(BOX3_KERNEL[ky][kx]);
                    }
                }
                output[y - 1][x - 1] = static_cast<uint8_t>(sum / 9);
            }
        }
    }
}

static void linebuffer_box3_pipeline(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    uint8_t linebuf[2][MAX_WIDTH] = {};
    uint8_t window[3][3] = {};

    copy_image_plain(input, output, width, height);
    if (width < 3 || height < 3) {
        return;
    }

    VITIS_LOOP_80_1: for (int y = 0; y < height; y++) {
        VITIS_LOOP_81_2: for (int x = 0; x < width; x++) {
#pragma HLS PIPELINE II=1
            VITIS_LOOP_83_3: for (int r = 0; r < 3; r++) {
                VITIS_LOOP_84_4: for (int c = 0; c < 2; c++) {
                    window[r][c] = window[r][c + 1];
                }
            }

            window[0][2] = linebuf[1][x];
            window[1][2] = linebuf[0][x];
            window[2][2] = input[y][x];

            linebuf[1][x] = linebuf[0][x];
            linebuf[0][x] = input[y][x];

            if (y >= 2 && x >= 2) {
                uint16_t sum = 0;
                VITIS_LOOP_98_5: for (int ky = 0; ky < 3; ky++) {
                    VITIS_LOOP_99_6: for (int kx = 0; kx < 3; kx++) {
                        sum += static_cast<uint16_t>(window[ky][kx]) *
                               static_cast<uint16_t>(BOX3_KERNEL[ky][kx]);
                    }
                }
                output[y - 1][x - 1] = static_cast<uint8_t>(sum / 9);
            }
        }
    }
}

static void linebuffer_box3_pipeline_unroll(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    uint8_t linebuf[2][MAX_WIDTH] = {};
    uint8_t window[3][3] = {};

    copy_image_plain(input, output, width, height);
    if (width < 3 || height < 3) {
        return;
    }

    VITIS_LOOP_124_1: for (int y = 0; y < height; y++) {
        VITIS_LOOP_125_2: for (int x = 0; x < width; x++) {
#pragma HLS PIPELINE II=1
            VITIS_LOOP_127_3: for (int r = 0; r < 3; r++) {
#pragma HLS UNROLL
                VITIS_LOOP_129_4: for (int c = 0; c < 2; c++) {
#pragma HLS UNROLL
                    window[r][c] = window[r][c + 1];
                }
            }

            window[0][2] = linebuf[1][x];
            window[1][2] = linebuf[0][x];
            window[2][2] = input[y][x];

            linebuf[1][x] = linebuf[0][x];
            linebuf[0][x] = input[y][x];

            if (y >= 2 && x >= 2) {
                uint16_t sum = 0;
                VITIS_LOOP_144_5: for (int ky = 0; ky < 3; ky++) {
#pragma HLS UNROLL
                    VITIS_LOOP_146_6: for (int kx = 0; kx < 3; kx++) {
#pragma HLS UNROLL
                        sum += static_cast<uint16_t>(window[ky][kx]) *
                               static_cast<uint16_t>(BOX3_KERNEL[ky][kx]);
                    }
                }
                output[y - 1][x - 1] = static_cast<uint8_t>(sum / 9);
            }
        }
    }
}

static void linebuffer_box3_pipeline_unroll_partition(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    uint8_t linebuf[2][MAX_WIDTH] = {};
    uint8_t window[3][3] = {};
    int kernel_local[3][3] = {
        {1, 1, 1},
        {1, 1, 1},
        {1, 1, 1}
    };
#pragma HLS ARRAY_PARTITION variable=linebuf complete dim=1
#pragma HLS ARRAY_PARTITION variable=window complete dim=0
#pragma HLS ARRAY_PARTITION variable=kernel_local complete dim=0

    copy_image_plain(input, output, width, height);
    if (width < 3 || height < 3) {
        return;
    }

    VITIS_LOOP_180_1: for (int y = 0; y < height; y++) {
        VITIS_LOOP_181_2: for (int x = 0; x < width; x++) {
#pragma HLS PIPELINE II=1
            VITIS_LOOP_183_3: for (int r = 0; r < 3; r++) {
#pragma HLS UNROLL
                VITIS_LOOP_185_4: for (int c = 0; c < 2; c++) {
#pragma HLS UNROLL
                    window[r][c] = window[r][c + 1];
                }
            }

            window[0][2] = linebuf[1][x];
            window[1][2] = linebuf[0][x];
            window[2][2] = input[y][x];

            linebuf[1][x] = linebuf[0][x];
            linebuf[0][x] = input[y][x];

            if (y >= 2 && x >= 2) {
                uint16_t sum = 0;
                VITIS_LOOP_200_5: for (int ky = 0; ky < 3; ky++) {
#pragma HLS UNROLL
                    VITIS_LOOP_202_6: for (int kx = 0; kx < 3; kx++) {
#pragma HLS UNROLL
                        sum += static_cast<uint16_t>(window[ky][kx]) *
                               static_cast<uint16_t>(kernel_local[ky][kx]);
                    }
                }
                output[y - 1][x - 1] = static_cast<uint8_t>(sum / 9);
            }
        }
    }
}

static void copy_stage(
    uint8_t src[MAX_HEIGHT][MAX_WIDTH],
    uint8_t dst[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
#pragma HLS INLINE off
    VITIS_LOOP_221_1: for (int y = 0; y < height; y++) {
        VITIS_LOOP_222_2: for (int x = 0; x < width; x++) {
            dst[y][x] = src[y][x];
        }
    }
}

static void compute_stage_dataflow(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
#pragma HLS INLINE off
    linebuffer_box3_pipeline_unroll_partition(input, output, width, height);
}

static void copy_image_inline(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
#pragma HLS INLINE
    VITIS_LOOP_245_1: for (int y = 0; y < height; y++) {
        VITIS_LOOP_246_2: for (int x = 0; x < width; x++) {
            output[y][x] = input[y][x];
        }
    }
}

static void mac_inline(uint8_t window[3][3], uint16_t &sum) {
#pragma HLS INLINE
    VITIS_LOOP_254_1: for (int ky = 0; ky < 3; ky++) {
#pragma HLS UNROLL
        VITIS_LOOP_256_2: for (int kx = 0; kx < 3; kx++) {
#pragma HLS UNROLL
            sum += static_cast<uint16_t>(window[ky][kx]) *
                   static_cast<uint16_t>(BOX3_KERNEL[ky][kx]);
        }
    }
}

static void linebuffer_box3_final(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    uint8_t linebuf[2][MAX_WIDTH] = {};
    uint8_t window[3][3] = {};
#pragma HLS ARRAY_PARTITION variable=linebuf complete dim=1
#pragma HLS ARRAY_PARTITION variable=window complete dim=0

    copy_image_inline(input, output, width, height);
    if (width < 3 || height < 3) {
        return;
    }

    VITIS_LOOP_280_1: for (int y = 0; y < height; y++) {
        VITIS_LOOP_281_2: for (int x = 0; x < width; x++) {
#pragma HLS PIPELINE II=1
            VITIS_LOOP_283_3: for (int r = 0; r < 3; r++) {
#pragma HLS UNROLL
                VITIS_LOOP_285_4: for (int c = 0; c < 2; c++) {
#pragma HLS UNROLL
                    window[r][c] = window[r][c + 1];
                }
            }

            window[0][2] = linebuf[1][x];
            window[1][2] = linebuf[0][x];
            window[2][2] = input[y][x];

            linebuf[1][x] = linebuf[0][x];
            linebuf[0][x] = input[y][x];

            if (y >= 2 && x >= 2) {
                uint16_t sum = 0;
                mac_inline(window, sum);
                output[y - 1][x - 1] = static_cast<uint8_t>(sum / 9);
            }
        }
    }
}

void blur_opt_base(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    linebuffer_box3_base<int>(input, output, width, height);
}

void blur_opt_bitwidth(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    linebuffer_box3_base<uint16_t>(input, output, width, height);
}

void blur_opt_pipeline(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    linebuffer_box3_pipeline(input, output, width, height);
}

__attribute__((sdx_kernel("blur_opt_pipeline_unroll", 0))) void blur_opt_pipeline_unroll(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
#line 21 "C:/BlurCALDAllComparisons/hls_optimization/run_hls_optimizations.tcl"
#pragma HLSDIRECTIVE TOP name=blur_opt_pipeline_unroll
# 339 "blur_opt.cpp"

    linebuffer_box3_pipeline_unroll(input, output, width, height);
}

void blur_opt_pipeline_unroll_partition(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    linebuffer_box3_pipeline_unroll_partition(input, output, width, height);
}

void blur_opt_dataflow(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
#pragma HLS DATAFLOW
    static uint8_t stage0[MAX_HEIGHT][MAX_WIDTH];
    static uint8_t stage1[MAX_HEIGHT][MAX_WIDTH];

    copy_stage(input, stage0, width, height);
    compute_stage_dataflow(stage0, stage1, width, height);
    copy_stage(stage1, output, width, height);
}

void blur_opt_final(
    uint8_t input[MAX_HEIGHT][MAX_WIDTH],
    uint8_t output[MAX_HEIGHT][MAX_WIDTH],
    int width,
    int height
) {
    linebuffer_box3_final(input, output, width, height);
}
