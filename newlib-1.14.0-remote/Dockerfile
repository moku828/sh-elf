FROM moku828/gcc:3.4.5-sh-elf-remote
RUN cd /usr/local/src \
 && wget -nv ftp://sourceware.org/pub/newlib/newlib-1.14.0.tar.gz > /dev/null 2>&1 \
 && tar zxf newlib-1.14.0.tar.gz \
 && rm /usr/local/src/newlib-1.14.0.tar.gz \
 && mkdir /usr/local/src/newlib-1.14.0/build \
 && cd /usr/local/src/newlib-1.14.0/build \
 && ../configure --target=sh-elf > /dev/null 2>&1 \
 && make -s -j8 > /dev/null 2>&1 \
 && make -s install > /dev/null 2>&1 \
 && rm -rf /usr/local/src/newlib-1.14.0
