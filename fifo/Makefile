
target_name ?= fifo

include ../Makefile.build

FIFO_MAP_VERSION=c0ea4f41f0d32cf99a828a29ffe6382f774c1d0f

fifo_clone:
	if [ ! -f "json.hpp" ]; then \
		git clone https://github.com/nlohmann/fifo_map.git fifo_map-$(FIFO_MAP_VERSION); \
		cd fifo_map-$(FIFO_MAP_VERSION); git reset --hard $(FIFO_MAP_VERSION); cd ..; \
	fi

fifo_config:
	@true

fifo_build:
	@true

fifo_install:
	mkdir -p ${BSPROOTFS}/include/nlohmann
	cp fifo_map-$(FIFO_MAP_VERSION)/src/fifo_map.hpp ${BSPROOTFS}/include/nlohmann

fifo_uninstall:
	rm -rf ${BSPROOTFS}/include/nlohmann/fifo_map.hpp

fifo_clean:
	@true

fifo_distclean:
	rm -rf fifo_map-$(FIFO_MAP_VERSION)
