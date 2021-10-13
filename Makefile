# Top-level Makefile for Remind.

all: src/Makefile
	@echo ""
	@echo "*******************"
	@echo "*                 *"
	@echo "* Building REMIND *"
	@echo "*                 *"
	@echo "*******************"
	@echo ""
	@cd src && $(MAKE) all LANGDEF=$(LANGDEF)

install:
	@echo ""
	@echo "*********************"
	@echo "*                   *"
	@echo "* Installing REMIND *"
	@echo "*                   *"
	@echo "*********************"
	@echo ""
	@$(MAKE) -C src install
	@$(MAKE) -C rem2html install

clean:
	find . -name '*~' -exec rm {} \;
	cd src && $(MAKE) clean

test:
	@cd src && $(MAKE) -s test

distclean: clean
	rm -f config.cache config.log config.status src/Makefile src/config.h tests/test.out www/Makefile

src/Makefile: src/Makefile.in
	./configure

# DO NOT DELETE

