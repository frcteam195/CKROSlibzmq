all:
	make x86_64
	make aarch64

aarch64:
	@mkdir -p build
	@mkdir -p build/aarch64	
	cd build/aarch64 && \
	cmake ../../ -DCMAKE_TOOLCHAIN_FILE=../../aarch64_jetson_toolchain.cmake -DJETSON_TOOLCHAIN_PATH=/jetsontoolchain/bin/&& \
	make -j8

x86_64:
	@mkdir -p build
	@mkdir -p build/x86_64
	cd build/x86_64 && \
	cmake ../../ && \
	make -j8

clean:
	@rm -rf ./build
