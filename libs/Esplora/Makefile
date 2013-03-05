MCU=atmega328p
F_CPU=16000000UL
CC=avr-gcc
CPP=avr-g++
AR=avr-ar
CFLAGS=-I./ -I../../core -std=gnu99 -DF_CPU=$(F_CPU) -Os -mmcu=$(MCU)
CPPFLAGS=-I./ -I../../core -DF_CPU=$(F_CPU) -Os -mmcu=$(MCU)
PREFIX=/usr/local/arduino

OBJS=Esplora.o
SRCS=Esplora.h
LIBNAME=libarduino-esplora.a

default: $(LIBNAME)

$(LIBNAME): $(OBJS)
	$(AR) crs $(LIBNAME) $(OBJS)

.c.o: $(SRCS)
	$(CC) $(CFLAGS) -c $*.c

.cpp.o: $(SRCS)
	$(CPP) $(CPPFLAGS) -c $*.cpp

.cc.o: $(SRCS)
	$(CPP) $(CPPFLAGS) -c $*.cc

clean:
	rm -f $(OBJS) $(LIBNAME)

install:
	mkdir -p $(PREFIX)/libs
	mkdir -p $(PREFIX)/include
	cp *.h $(PREFIX)/include
	cp *.a $(PREFIX)/libs
