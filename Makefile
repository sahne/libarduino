MCU=atmega328p
F_CPU=16000000UL
SUBDIRS=\
core\
libs

CLEANDIRS=$(SUBDIRS:%=clean-%)
INSTALLDIRS=$(SUBDIRS:%=install-%)

.PHONY: subdirs $(SUBDIRS) clean install

all: subdirs

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ MCU=$(MCU) F_CPU=$(F_CPU)

clean: $(CLEANDIRS)

$(CLEANDIRS):
	$(MAKE) -C $(@:clean-%=%) clean
	
install: $(INSTALLDIRS)

$(INSTALLDIRS):
	$(MAKE) -C $(@:install-%=%) install
