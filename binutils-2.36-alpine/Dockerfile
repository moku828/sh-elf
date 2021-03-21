FROM alpine
RUN mkdir /usr/local/src \
 && cd /usr/local/src \
 && wget -nv https://ftp.gnu.org/gnu/binutils/binutils-2.36.tar.xz > /dev/null 2>&1 \
 && tar Jxf binutils-2.36.tar.xz \
 && rm /usr/local/src/binutils-2.36.tar.xz \
 && mkdir /usr/local/src/binutils-2.36/build \
 && cd /usr/local/src/binutils-2.36/build \
 && apk add --virtual build-dependencies build-base \
 && ../configure --target=sh-elf > /dev/null 2>&1 \
 && make -s -j8 > /dev/null 2>&1 \
 && make -s install-strip > /dev/null 2>&1 \
 && apk del build-dependencies \
 && rm -rf /var/cache/apk/* \
 && rm -rf /usr/local/src/binutils-2.36 \
 && rm -rf /usr/local/src
