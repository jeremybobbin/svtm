BINS=svtm svtm-ctl svtm-vt 
PREFIX=/usr/local

install:
	cp -a $(BINS) $(PREFIX)/bin
