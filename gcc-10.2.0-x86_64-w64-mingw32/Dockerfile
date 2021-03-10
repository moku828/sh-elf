FROM moku828/gdb:10.1-sh-elf-x86_64-w64-mingw32
COPY --from=moku828/gcc:10.2.0-sh-elf /usr/local/bin/sh-elf-* /usr/local/bin/
COPY --from=moku828/gcc:10.2.0-sh-elf /usr/local/lib/gcc/sh-elf /usr/local/lib/gcc/sh-elf
COPY --from=moku828/gcc:10.2.0-sh-elf /usr/local/libexec/gcc/sh-elf /usr/local/libexec/gcc/sh-elf
COPY --from=moku828/gcc:10.2.0-sh-elf /usr/local/sh-elf /usr/local/sh-elf
RUN cd /usr/local/src \
 && wget https://gmplib.org/download/gmp/gmp-6.2.1.tar.xz > /dev/null 2>&1 \
 && tar Jxf gmp-6.2.1.tar.xz \
 && rm /usr/local/src/gmp-6.2.1.tar.xz \
 && mkdir /usr/local/src/gmp-6.2.1/build \
 && cd /usr/local/src/gmp-6.2.1/build \
 && ../configure --prefix=/usr/x86_64-w64-mingw32 --host=x86_64-w64-mingw32 > /dev/null 2>&1 \
 && make -s -j8 > /dev/null 2>&1 \
 && make -s install > /dev/null 2>&1 \
 && rm -rf /usr/local/src/gmp-6.2.1 \
 && cd /usr/local/src \
 && wget https://www.mpfr.org/mpfr-4.1.0/mpfr-4.1.0.tar.xz > /dev/null 2>&1 \
 && tar Jxf mpfr-4.1.0.tar.xz \
 && rm /usr/local/src/mpfr-4.1.0.tar.xz \
 && mkdir /usr/local/src/mpfr-4.1.0/build \
 && cd /usr/local/src/mpfr-4.1.0/build \
 && ../configure --prefix=/usr/x86_64-w64-mingw32 --host=x86_64-w64-mingw32 --with-gmp=/usr/x86_64-w64-mingw32 --enable-static --disable-shared > /dev/null 2>&1 \
 && make -s -j8 > /dev/null 2>&1 \
 && make -s install > /dev/null 2>&1 \
 && rm -rf /usr/local/src/mpfr-4.1.0 \
 && cd /usr/local/src \
 && wget https://ftp.gnu.org/gnu/mpc/mpc-1.2.1.tar.gz > /dev/null 2>&1 \
 && tar zxf mpc-1.2.1.tar.gz \
 && rm /usr/local/src/mpc-1.2.1.tar.gz \
 && mkdir /usr/local/src/mpc-1.2.1/build \
 && cd /usr/local/src/mpc-1.2.1/build \
 && ../configure --prefix=/usr/x86_64-w64-mingw32 --host=x86_64-w64-mingw32 --with-gmp=/usr/x86_64-w64-mingw32 --with-mpfr=/usr/x86_64-w64-mingw32 --enable-static --disable-shared > /dev/null 2>&1 \
 && make -s -j8 > /dev/null 2>&1 \
 && make -s install > /dev/null 2>&1 \
 && rm -rf /usr/local/src/mpc-1.2.1 \
 && cd /usr/local/src \
 && wget -nv http://ftp.tsukuba.wide.ad.jp/software/gcc/releases/gcc-10.2.0/gcc-10.2.0.tar.xz > /dev/null 2>&1 \
 && tar Jxf gcc-10.2.0.tar.xz \
 && rm /usr/local/src/gcc-10.2.0.tar.xz \
 && mkdir /usr/local/src/gcc-10.2.0/build \
 && cd /usr/local/src/gcc-10.2.0/build \
 && apt-get update > /dev/null 2>&1 \
 && apt-get install -y --no-install-recommends libmpfr-dev libmpc-dev > /dev/null 2>&1 \
 && rm -r /var/lib/apt/lists/* \
 && ../configure CFLAGS_FOR_TARGET="-gdwarf-2 -gstrict-dwarf -O2" --target=sh-elf --host=x86_64-w64-mingw32 --enable-languages=c --disable-libssp --with-newlib > /dev/null 2>&1 \
 && make -s -j8 > /dev/null 2>&1 \
 && make -s install > /dev/null 2>&1 \
 && rm -rf /usr/local/src/gcc-10.2.0
