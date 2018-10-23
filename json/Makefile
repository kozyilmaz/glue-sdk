
target_name ?= json

include ../Makefile.build

JSON_VERSION=3.2.0

json_clone:
	if [ ! -f "json.hpp" ]; then curl -OL https://github.com/nlohmann/json/releases/download/v$(JSON_VERSION)/json.hpp; fi

json_config:
	@true

json_build:
	@true

json_install:
	mkdir -p ${BSPROOTFS}/include/nlohmann
	cp json.hpp ${BSPROOTFS}/include/nlohmann

json_uninstall:
	rm -rf ${BSPROOTFS}/include/nlohmann/json.hpp

json_clean:
	@true

json_distclean:
	rm -rf json.hpp
