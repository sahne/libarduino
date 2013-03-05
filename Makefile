SUBDIRS=\
core\
libs

CLEANDIRS=$(SUBDIRS:%=clean-%)
INSTALLDIRS=$(SUBDIRS:%=install-%)

.PHONY: subdirs $(SUBDIRS) clean install

all: subdirs

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

clean: $(CLEANDIRS)

$(CLEANDIRS):
	$(MAKE) -C $(@:clean-%=%) clean
	
install: $(INSTALLDIRS)

$(INSTALLDIRS):
	$(MAKE) -C $(@:install-%=%) install
