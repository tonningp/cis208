#!/bin/bash

gcc -g test.c -o testit

gdb --batch --command=test.gdb --args ./testit
