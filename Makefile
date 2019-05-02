# 
# Makefile for reverse.cuf exercise
#

MF= Makefile
CP= cp

EXE= glj 

SRC= glj.cuf main.cuf 

ARCH=cc30

CC=	pgfortran
CFLAGS= -Mcuda=$(ARCH) -O3 


.SUFFIXES:
.SUFFIXES: .cuf  .o

OBJ=	$(SRC:.cuf=.o)


.cuf.o:
	$(CC) $(CFLAGS) -c $<

default: $(EXE)

$(EXE):	$(OBJ) 
	$(CC) $(CFLAGS) -o $@ $(OBJ) 

$(OBJ):	$(MF) 

clean:
	rm -f $(OBJ) $(EXE) *.mod core
