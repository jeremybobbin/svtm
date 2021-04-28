BINS=svtm svtm-ctl svtm-vt pidfile
PREFIX=/usr/local

install:
	cp -a $(BINS) $(PREFIX)/bin
