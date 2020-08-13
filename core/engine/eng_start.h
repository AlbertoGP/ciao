/*
 *  eng_start.h
 *
 *  Load and execute a bytecode executable.
 *
 *  Copyright (C) 1996-2002 UPM-CLIP
 *  Copyright (C) 2020 The Ciao Development Team
 */

#ifndef _CIAO_ENG_START_H
#define _CIAO_ENG_START_H

extern char **prolog_argv;
extern int prolog_argc;

CVOID__PROTO(load_ql_files, FILE *qfile);
worker_t *create_and_init_wam(void);
void create_source_path(char *pathname);
int engine_start(int argc, char **argv);
void engine_exit(int exit_code);

void engine_set_opts(const char **optv, int optc, const char **boot_path);
void engine_init(const char *boot_path, const char *emulator);

#endif /* _CIAO_ENG_START_H */
