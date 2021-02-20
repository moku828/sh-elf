FROM moku828/gcc:10.2.0-sh-elf
RUN cd /usr/local/src \
 && wget -nv ftp://sourceware.org/pub/newlib/newlib-4.1.0.tar.gz > /dev/null 2>&1 \
 && tar zxf newlib-4.1.0.tar.gz \
 && rm /usr/local/src/newlib-4.1.0.tar.gz \
 && mkdir /usr/local/src/newlib-4.1.0/build \
 && cd /usr/local/src/newlib-4.1.0/build \
 && ../configure CFLAGS_FOR_TARGET="-gdwarf-2 -gstrict-dwarf -O2" --target=sh-elf > /dev/null 2>&1 \
 && make -s -j8 > /dev/null 2>&1 \
 && make -s install > /dev/null 2>&1 \
 && rm -rf /usr/local/src/newlib-4.1.0
