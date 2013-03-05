MCU=atmega328p
F_CPU=16000000UL
CC=avr-gcc
CPP=avr-g++
AR=avr-ar
CFLAGS=-I./ -std=gnu99 -DF_CPU=$(F_CPU) -Os -mmcu=$(MCU)
CPPFLAGS=-I./ -DF_CPU=$(F_CPU) -Os -mmcu=$(MCU)
PREFIX=/usr/local/arduino

HDRS=\
Arduino.h\
Client.h\
HardwareSerial.h\
IPAddress.h\
Platform.h\
Print.h\
Printable.h\
Server.h\
Stream.h\
USBAPI.h\
USBCore.h\
USBDesc.h\
Udp.h\
WCharacter.h\
WString.h\
binary.h\
new.h\
pins_arduino.h\
wiring_private.h

OBJS=\
CDC.o\
HID.o\
HardwareSerial.o\
IPAddress.o\
Print.o\
Stream.o\
Tone.o\
USBCore.o\
WInterrupts.o\
WMath.o\
WString.o\
main.o\
new.o\
wiring.o\
wiring_analog.o\
wiring_digital.o\
wiring_pulse.o\
wiring_shift.o

default: libarduino.a

libarduino.a: $(OBJS)
	$(AR) crs libarduino.a $(OBJS)

.c.o: $(HDRS)
	$(CC) $(CFLAGS) -c $*.c

.cpp.o: $(HDRS)
	$(CPP) $(CPPFLAGS) -c $*.cpp

clean:
	rm -f $(OBJS) libarduino.a

install:
	mkdir -p $(PREFIX)/lib
	mkdir -p $(PREFIX)/include
	cp *.h $(PREFIX)/include
	cp *.a $(PREFIX)/lib
