FROM gcc:10
RUN apt-get update > /dev/null 2>&1 \
 && apt-get install -y --no-install-recommends mingw-w64 > /dev/null 2>&1 \
 && rm -r /var/lib/apt/lists/*
RUN cd /usr/local/src \
 && wget -nv https://ftp.gnu.org/gnu/binutils/binutils-2.36.tar.xz > /dev/null 2>&1 \
 && tar Jxf binutils-2.36.tar.xz \
 && rm /usr/local/src/binutils-2.36.tar.xz \
 && mkdir /usr/local/src/binutils-2.36/build \
 && cd /usr/local/src/binutils-2.36/build \
 && ../configure --target=sh-elf --host=x86_64-w64-mingw32 > /dev/null 2>&1 \
 && make -s -j8 > /dev/null 2>&1 \
 && make -s install > /dev/null 2>&1 \
 && rm -rf /usr/local/src/binutils-2.36
