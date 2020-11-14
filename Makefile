BINS=svtm svtm-ctl svtm-vt 
PREFIX=$(HOME)/.local

install:
	cp -a $(BINS) $(PREFIX)/bin
