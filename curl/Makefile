
target_name ?= curl

include ../Makefile.build

CURL_VERSION=7.61.0

curl_clone:
	if [ ! -f "curl-$(CURL_VERSION).tar.gz" ]; then curl -OL https://curl.haxx.se/download/curl-$(CURL_VERSION).tar.gz; fi
	if [ ! -d "curl-$(CURL_VERSION)" ]; then tar xvf curl-$(CURL_VERSION).tar.gz; fi

curl_config:
	( cd curl-$(CURL_VERSION); \
		CFLAGS="${BSPCFLAGS}" \
		CXXFLAGS="${BSPCFLAGS}" \
		CPPFLAGS="${BSPCFLAGS}" \
		LDFLAGS="${BSPLDFLAGS}" \
		PKG_CONFIG_PATH=${BSPROOTFS}/lib/pkgconfig \
		./configure --prefix=${BSPROOTFS} \
		--with-pic --enable-static --disable-shared \
		--disable-verbose \
		--disable-manual \
		--disable-debug \
		--disable-curldebug \
		--enable-optimize \
		--enable-symbol-hiding \
		--disable-ftp --disable-ldap --disable-ldaps --disable-rtsp \
		--disable-dict --disable-telnet --disable-tftp --disable-pop3 \
		--disable-imap --disable-smb --disable-smtp --disable-gopher \
		--disable-ntlm-wb \
		--with-ssl=${BSPROOTFS} \
		--with-ca-fallback \
		--without-zlib \
	)

curl_build:
	make -C curl-$(CURL_VERSION) -j ${BSPJOB}

curl_install:
	make -C curl-$(CURL_VERSION) install

curl_uninstall:
	make -C curl-$(CURL_VERSION) uninstall

curl_clean:
	if [ -f "curl-$(CURL_VERSION)/Makefile" ]; then make -C curl-$(CURL_VERSION) distclean; fi

curl_distclean:
	rm -rf curl-$(CURL_VERSION)
	rm -rf curl-$(CURL_VERSION).tar.gz
