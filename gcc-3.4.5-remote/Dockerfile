FROM moku828/gdb:10.1-sh-elf-remote
RUN cd /usr/local/src \
 && wget -nv http://ftp.tsukuba.wide.ad.jp/software/gcc/releases/gcc-3.4.5/gcc-3.4.5.tar.bz2 > /dev/null 2>&1 \
 && tar jxf gcc-3.4.5.tar.bz2 \
 && rm /usr/local/src/gcc-3.4.5.tar.bz2 \
 && mkdir /usr/local/src/gcc-3.4.5/build \
 && cd /usr/local/src/gcc-3.4.5/build \
 && ../configure --target=sh-elf --enable-languages=c > /dev/null 2>&1 \
 && make -s -j8 > /dev/null 2>&1 \
 && make -s install > /dev/null 2>&1 \
 && rm -rf /usr/local/src/gcc-3.4.5
