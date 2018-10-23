
ifeq ($(BSPROOT),)
    $(error You must first run 'source environment')
endif

subdir-y += \
	tools \
	openssl \
	curl \
	libevent \
	boost \
	bitcoin \
	libevhtp \
	fifo \
	json

curl_depends-y = \
	openssl

libevent_depends-y = \
	openssl

bitcoin_depends-y = \
	openssl \
	libevent \
	boost

libevhtp_depends-y = \
	openssl \
	libevent

include Makefile.lib

clone:
	@true

config:
	@true

build:
	@true

install:
	@true

uninstall:
	@true

clean:
	@true

distclean: clean
	@true
