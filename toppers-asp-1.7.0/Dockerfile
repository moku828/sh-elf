FROM moku828/qemu:develop-2018.08-sh4eb-softmmu
RUN mkdir /workspaces \
 && cd /workspaces \
 && wget -nv https://www.toppers.jp/download.cgi/asp_apsh2a_gcc-20110809.tar.gz > /dev/null 2>&1 \
 && tar zxf asp_apsh2a_gcc-20110809.tar.gz \
 && rm asp_apsh2a_gcc-20110809.tar.gz \
 && cd /workspaces/asp/cfg/cfg \
 && wget -nv https://www.toppers.jp/download.cgi/cfg-linux-static-1_9_6.gz > /dev/null 2>&1 \
 && gzip -d cfg-linux-static-1_9_6.gz \
 && mv cfg-linux-static-1_9_6 cfg \
 && chmod 755 cfg \
 && cd /workspaces/asp \
 && sed -i "s/require \"getopt.pl\";/use Getopt::Std;/g" configure utils/makedep \
 && sed -i "s/Getopt(/getopt(/g" configure utils/makedep \
 && sed -i "s/do //g" configure utils/makedep \
 && cd /workspaces \
 && mkdir obj
