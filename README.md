# SVTM

The simple virtual terminal manager

---

### Bindings:

- ^Gj: next pty
- ^Gk: prev pty
- ^Gc: create pty
- ^Ge: dump pty history into editor
- ^Gu: scroll up
- ^Gd: scroll down
- ^Gx: close

### Dependencies:

- [abduco](https://github.com/martanne/abduco)
	{at,de}tach support
- [sthkd](https://github.com/jeremybobbin/sthkd) -
	intercepts TTY input, and matches them against bindings
- [svt](https://github.com/jeremybobbin/libst/tree/master/examples/svt) -
	this provides state for the terminal, so that the screen is updated when the terminal is swapped out from underneath



### Installing:

```
git clone https://github.com/jeremybobbin/libst && \
	cd libst && make && sudo make install && \
	cd examples/svt && make && sudo make install && cd ../../../ && \
	git clone https://github.com/jeremybobbin/sthkd && \
	cd sthkd && make && sudo make install && cd ../ && \
	git clone https://github.com/martanne/abduco && \
	cd abduco && ./configure && make && sudo make install && cd ../ && \
	git clone https://github.com/jeremybobbin/svtm && \
	cd svtm && sudo make install
```

### Design:

```
                 pty                 
                  |                  
                svtm                 
                  |                  
                sthkd                
      <- ^Gk -    |    - ^Gj ->      
+-----------------|-----------------+
| (slave-1)   (slave-2)   (slave-3) |
|   abduco      abduco      abduco  |
|     |           |           |     |
|    svt         svt         svt    |
|     |           |           |     |
|    pty         pty         pty    |
+-----------------------------------+
```
