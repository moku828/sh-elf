FROM moku828/binutils:2.36-sh-elf-remote
RUN cd /usr/local/src \
 && wget -nv https://ftp.gnu.org/gnu/gdb/gdb-10.1.tar.xz > /dev/null 2>&1 \
 && tar Jxf gdb-10.1.tar.xz \
 && rm /usr/local/src/gdb-10.1.tar.xz \
 && mkdir /usr/local/src/gdb-10.1/build \
 && cd /usr/local/src/gdb-10.1/build \
 && apt-get update > /dev/null 2>&1 \
 && apt-get install -y --no-install-recommends texinfo > /dev/null 2>&1 \
 && rm -r /var/lib/apt/lists/* \
 && ../configure --target=sh-elf > /dev/null 2>&1 \
 && make -s -j8 > /dev/null 2>&1 \
 && make -s install > /dev/null 2>&1 \
 && rm -rf /usr/local/src/gdb-10.1
