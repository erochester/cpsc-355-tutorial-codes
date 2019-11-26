# An example of gdb makefile for Assignment 5
all:		a5a.o a5aMain.o
		gcc a5a.i a5aMain.o -o a5a -g3

a5a.o:		a5a.asm
		m4 a5a.asm > a5a.s
		as a5a.s -o a5a.o -g3

a5aMain.o:	a5aMain.c
		gcc -c a5aMain -g3
