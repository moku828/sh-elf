FROM moku828/binutils:2.36-sh-elf-alpine
RUN mkdir /usr/local/src \
 && cd /usr/local/src \
 && wget -nv https://ftp.gnu.org/gnu/gdb/gdb-10.1.tar.xz > /dev/null 2>&1 \
 && tar Jxf gdb-10.1.tar.xz \
 && rm /usr/local/src/gdb-10.1.tar.xz \
 && mkdir /usr/local/src/gdb-10.1/build \
 && cd /usr/local/src/gdb-10.1/build \
 && apk add --virtual build-dependencies build-base texinfo \
 && ../configure --target=sh-elf > /dev/null 2>&1 \
 && make -s -j8 > /dev/null 2>&1 \
 && make -s install > /dev/null 2>&1 \
 && strip /usr/local/bin/sh-elf-gdb \
 && apk del build-dependencies \
 && rm -rf /usr/local/src/gdb-10.1 \
 && rm -rf /usr/local/src \
 && apk add --no-cache libstdc++
