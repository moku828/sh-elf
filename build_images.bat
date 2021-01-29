cd C:\test\sh-elf\binutils-2.36
docker build -t moku828/binutils:2.36-sh-elf .
docker push moku828/binutils:2.36-sh-elf
cd C:\test\sh-elf\gdb-10.1
docker build -t moku828/gdb:10.1-sh-elf .
docker push moku828/gdb:10.1-sh-elf
cd C:\test\sh-elf\gcc-3.4.5
docker build -t moku828/gcc:3.4.5-sh-elf .
docker push moku828/gcc:3.4.5-sh-elf
cd C:\test\sh-elf\newlib-1.14.0
docker build -t moku828/newlib:1.14.0-sh-elf .
docker push moku828/newlib:1.14.0-sh-elf
cd C:\test\sh-elf\gcc-10.2.0
docker build -t moku828/gcc:10.2.0-sh-elf .
docker push moku828/gcc:10.2.0-sh-elf
cd C:\test\sh-elf\newlib-4.1.0
docker build -t moku828/newlib:4.1.0-sh-elf .
docker push moku828/newlib:4.1.0-sh-elf
cd C:\test\sh-elf\binutils-2.36-remote
docker build -t moku828/binutils:2.36-sh-elf-remote .
docker push moku828/binutils:2.36-sh-elf-remote
cd C:\test\sh-elf\gdb-10.1-remote
docker build -t moku828/gdb:10.1-sh-elf-remote .
docker push moku828/gdb:10.1-sh-elf-remote
cd C:\test\sh-elf\gcc-3.4.5-remote
docker build -t moku828/gcc:3.4.5-sh-elf-remote .
docker push moku828/gcc:3.4.5-sh-elf-remote
cd C:\test\sh-elf\newlib-1.14.0-remote
docker build -t moku828/newlib:1.14.0-sh-elf-remote .
docker push moku828/newlib:1.14.0-sh-elf-remote
cd C:\test\sh-elf\gcc-10.2.0-remote
docker build -t moku828/gcc:10.2.0-sh-elf-remote .
docker push moku828/gcc:10.2.0-sh-elf-remote
cd C:\test\sh-elf\newlib-4.1.0-remote
docker build -t moku828/newlib:4.1.0-sh-elf-remote .
docker push moku828/newlib:4.1.0-sh-elf-remote
cd C:\test\sh-elf\qemu-5.2.0
docker build -t moku828/qemu:5.2.0-sh4eb-softmmu .
docker push moku828/qemu:5.2.0-sh4eb-softmmu
pause
