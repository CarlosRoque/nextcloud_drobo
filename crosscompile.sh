export DROBO="5n"
export TOOLCHAIN="${BUILD_TOOLCHAIN:-${HOME}/xtools/toolchain/${DROBO}}"
export ARCH="armv7-a"
export HOST="arm-marvell-linux-gnueabi"
export PATH="${TOOLCHAIN}/bin:~/bin:$PATH"
export CFLAGS="-march=${ARCH} -mcpu=marvell-pj4 -mfpu=vfpv3-d16 -mfloat-abi=softfp"
export CXXFLAGS="${CFLAGS}"
export CC="${TOOLCHAIN}/bin/${HOST}-gcc"
export CXX="${TOOLCHAIN}/bin/${HOST}-g++"
export AR="${TOOLCHAIN}/bin/${HOST}-ar"
export AS="${TOOLCHAIN}/bin/${HOST}-as"
export RANLIB="${TOOLCHAIN}/bin/${HOST}-ranlib"
export STRIP="${TOOLCHAIN}/bin/${HOST}-strip"
export DROBOAPPS="/mnt/DroboFS/Shares/DroboApps" 
