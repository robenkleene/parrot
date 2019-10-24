.PHONY: install zip

install:
	./install.sh

zip:
	/usr/bin/ditto -c -k max-for-live/instruments/ Parrot.zip
