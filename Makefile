.PHONY: install zip

install:
	./install.sh -f

zip:
	/usr/bin/zip --junk-paths Parrot.zip max-for-live/instruments/*.amxd README.md Parrot.png
