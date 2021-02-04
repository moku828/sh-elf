FROM moku828/newlib:4.1.0-sh-elf-remote
RUN cd /usr/local/src \
 && git clone --depth 1 -b develop/2018.08 https://github.com/moku828/qemu.git > /dev/null 2>&1 \
 && mkdir /usr/local/src/qemu/build \
 && cd /usr/local/src/qemu/build \
 && apt-get update > /dev/null 2>&1 \
 && apt-get install -y --no-install-recommends pkg-config libglib2.0-dev libpixman-1-dev > /dev/null 2>&1 \
 && rm -r /var/lib/apt/lists/* \
 && ../configure --disable-bsd-user --disable-guest-agent --disable-strip --disable-werror --disable-gcrypt --enable-debug-info --disable-debug-tcg --disable-docs --disable-tcg-interpreter --enable-attr --disable-brlapi --disable-linux-aio --disable-bzip2 --disable-bluez --disable-cap-ng --disable-curl --disable-fdt --disable-glusterfs --disable-gnutls --disable-nettle --disable-gtk --disable-rdma --disable-libiscsi --disable-vnc-jpeg --disable-kvm --disable-lzo --disable-curses --disable-libnfs --disable-numa --disable-opengl --disable-vnc-png --disable-rbd --disable-vnc-sasl --disable-sdl --disable-seccomp --disable-smartcard --disable-snappy --disable-spice --disable-libssh2 --disable-libusb --disable-usb-redir --disable-vde --disable-vhost-net --disable-virglrenderer --disable-virtfs --enable-vnc --disable-vte --disable-xen --disable-xen-pci-passthrough --disable-xfsctl --disable-linux-user --enable-system --disable-blobs --disable-tools --disable-pie --target-list=sh4eb-softmmu > /dev/null 2>&1 \
 && make -s -j8 > /dev/null 2>&1 \
 && make -s install > /dev/null 2>&1 \
 && rm -rf /usr/local/src/qemu
