FROM mcr.microsoft.com/vscode/devcontainers/cpp:0-buster
RUN cd /usr/local/src \
 && wget -nv https://ftp.gnu.org/gnu/binutils/binutils-2.36.tar.xz > /dev/null 2>&1 \
 && tar Jxf binutils-2.36.tar.xz \
 && rm /usr/local/src/binutils-2.36.tar.xz \
 && mkdir /usr/local/src/binutils-2.36/build \
 && cd /usr/local/src/binutils-2.36/build \
 && ../configure --target=sh-elf > /dev/null 2>&1 \
 && make -s -j8 > /dev/null 2>&1 \
 && make -s install > /dev/null 2>&1 \
 && rm -rf /usr/local/src/binutils-2.36
