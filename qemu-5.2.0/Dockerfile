FROM alpine
RUN mkdir /usr/local/src \
 && cd /usr/local/src \
 && apk add --no-cache --virtual .qemu-builddeps \
  gcc \
  ninja \
  python3 \
  musl-dev \
  pkgconfig \
  glib-dev \
  pixman-dev \
  make \
  bash \
  perl \
  > /dev/null 2>&1 \
 && wget -nv https://download.qemu.org/qemu-5.2.0.tar.xz > /dev/null 2>&1 \
 && tar Jxf qemu-5.2.0.tar.xz \
 && rm qemu-5.2.0.tar.xz \
 && mkdir /usr/local/src/qemu-5.2.0/build \
 && cd /usr/local/src/qemu-5.2.0/build \
 && ../configure --disable-bsd-user --disable-guest-agent --disable-strip --disable-werror --disable-gcrypt --disable-debug-info --disable-debug-tcg --disable-docs --disable-tcg-interpreter --enable-attr --disable-brlapi --disable-linux-aio --disable-bzip2 --disable-cap-ng --disable-curl --disable-fdt --disable-glusterfs --disable-gnutls --disable-nettle --disable-gtk --disable-rdma --disable-libiscsi --disable-vnc-jpeg --disable-kvm --disable-lzo --disable-curses --disable-libnfs --disable-numa --disable-opengl --disable-vnc-png --disable-rbd --disable-vnc-sasl --disable-sdl --disable-seccomp --disable-smartcard --disable-snappy --disable-spice --disable-libusb --disable-usb-redir --disable-vde --disable-vhost-net --disable-virglrenderer --disable-virtfs --enable-vnc --disable-vte --disable-xen --disable-xen-pci-passthrough --disable-xfsctl --disable-linux-user --enable-system --disable-blobs --disable-tools --disable-pie --target-list=sh4eb-softmmu > /dev/null 2>&1 \
 && make -s -j8 > /dev/null 2>&1 \
 && make -s install > /dev/null 2>&1 \
 && rm -rf /usr/local/src \
 && apk del .qemu-builddeps > /dev/null 2>&1 \
 && apk add --no-cache \
  musl \
  glib \
  pixman \
  > /dev/null 2>&1
ENTRYPOINT [ "qemu-system-sh4eb" ]
