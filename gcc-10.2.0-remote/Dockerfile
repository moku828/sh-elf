FROM moku828/gdb:10.1-sh-elf-remote
RUN cd /usr/local/src \
 && wget -nv http://ftp.tsukuba.wide.ad.jp/software/gcc/releases/gcc-10.2.0/gcc-10.2.0.tar.xz > /dev/null 2>&1 \
 && tar Jxf gcc-10.2.0.tar.xz \
 && rm /usr/local/src/gcc-10.2.0.tar.xz \
 && mkdir /usr/local/src/gcc-10.2.0/build \
 && cd /usr/local/src/gcc-10.2.0/build \
 && apt-get update > /dev/null 2>&1 \
 && apt-get install -y --no-install-recommends libmpfr-dev libmpc-dev > /dev/null 2>&1 \
 && rm -r /var/lib/apt/lists/* \
 && ../configure --target=sh-elf --enable-languages=c --disable-libssp> /dev/null 2>&1 \
 && make -s -j8 > /dev/null 2>&1 \
 && make -s install > /dev/null 2>&1 \
 && rm -rf /usr/local/src/gcc-10.2.0
