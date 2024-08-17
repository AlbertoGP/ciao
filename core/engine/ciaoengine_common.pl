% (included file)

% ---------------------------------------------------------------------------
% TODO: backport core/cmds/loader.pl (extracts some code from internals)

% TODO: collect most of those dependencies from engine/ modules (backport from optim_comp)

% Source C files
:- '$native_include_c_header'('eng.h').
:- '$native_include_c_header'('configure.h').
:- '$native_include_c_header'('eng_predef.h').
:- '$native_include_c_header'('eng_terms.h').
:- '$native_include_c_header'('eng_debug.h'). % TODO: can it be moved later?
:- '$native_include_c_header'('os_signal.h').
:- '$native_include_c_header'('ciao_gluecode.h').
:- '$native_include_c_header'('os_threads.h').
:- '$native_include_c_header'('eng_profile.h').
:- '$native_include_c_header'('tabling.h').
:- '$native_include_c_header'('basiccontrol.h').

:- '$native_include_c_header'('instrdefs.h'). % (autogenerated)

:- '$native_include_c_source'('basiccontrol.c').

:- '$native_include_c_header'('io_basic.h').
:- '$native_include_c_source'('io_basic.c').

:- '$native_include_c_header'('rune.h').
:- '$native_include_c_source'('rune.c').
:- '$native_include_c_header'('unicode_tbl.h').

:- '$native_include_c_source'('term_compare.c').

:- '$native_include_c_source'('debugger_support.c').

:- '$native_include_c_header'('rt_exp.h').
:- '$native_include_c_source'('rt_exp.c').

:- '$native_include_c_header'('runtime_control.h').
:- '$native_include_c_source'('runtime_control.c').

:- '$native_include_c_header'('dynamic_rt.h').
:- '$native_include_c_source'('dynamic_rt.c').

:- '$native_include_c_header'('stream_basic.h').
:- '$native_include_c_source'('stream_basic.c').

:- '$native_include_c_header'('timing.h').
:- '$native_include_c_source'('timing.c').

:- '$native_include_c_source'('arithmetic.c').

:- '$native_include_c_source'('system.c').

:- '$native_include_c_source'('system_info.c').

:- '$native_include_c_header'('attributes.h').
:- '$native_include_c_source'('attributes.c').

:- '$native_include_c_source'('modload.c').

:- '$native_include_c_header'('internals.h').
:- '$native_include_c_source'('internals.c').

:- '$native_include_c_source'('concurrency.c').

:- '$native_include_c_source'('own_malloc.c').

:- '$native_include_c_source'('own_mmap.c').
:- '$native_include_c_source'('win32_mman.c').

:- '$native_include_c_header'('eng_alloc.h').
:- '$native_include_c_source'('eng_alloc.c').

:- '$native_include_c_header'('eng_gc.h').
:- '$native_include_c_source'('eng_gc.c').

:- '$native_include_c_header'('eng_registry.h').
:- '$native_include_c_source'('eng_registry.c').

:- '$native_include_c_source'('terms_check.c').

:- '$native_include_c_header'('atomic_basic.h').
:- '$native_include_c_source'('atomic_basic.c').

:- '$native_include_c_source'('term_typing.c').

:- '$native_include_c_source'('term_basic.c').

:- '$native_include_c_source'('qread.c').

%:- '$native_include_c_header'('eng_debug.h').
:- '$native_include_c_source'('eng_debug.c').

:- '$native_include_c_source'('eng_profile.c').

:- '$native_include_c_source'('eng_interrupt.c').

:- '$native_include_c_source'('gauge.c').

:- '$native_include_c_source'('eng_bignum.c').

:- '$native_include_c_header'('dtoa_ryu.h').
:- '$native_include_c_source'('dtoa_ryu.c').

% TODO: Add ciao_prolog as another library; try to avoid the noalias hack
:- '$native_include_c_header'('ciao_prolog.h', noalias).
:- '$native_include_c_source'('ciao_prolog.c').

:- '$native_include_c_header'('eng_start.h').
:- '$native_include_c_source'('eng_start.c').

% Automatically generated in car_maker:eng_prebuild_version_info/3
:- '$native_include_c_header'('version.h'). % (included from eng_predef.h)
:- '$native_include_c_source'('version.c').

% Automatically generated in build_car.sh:create_eng_build_info
:- '$native_include_c_source'('eng_build_info.c').

% ---------------------------------------------------------------------------
% Definitions for the bytecode emulator

:- include(engine(absmach_def)). % TODO: This should be a compiler option
% Emulator instruction definitions
:- native_export(code(all_ins_op), 'instrdefs.h').
% WAM loop functions (containing instructions code)
:- native_export(code(wam_loop_defs), 'wamloop.c').
% Runtime information for the instruction set
:- native_export(code(absmachdef), 'absmachdef.h').
% Engine info (Makefile format)
:- native_export(code(eng_info_mk), 'eng_info_mk'). % TODO: use module name automatically
% Engine info (sh format)
:- native_export(code(eng_info_sh), 'eng_info_sh'). % TODO: use module name automatically

% ---------------------------------------------------------------------------
