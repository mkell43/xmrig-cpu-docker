# usage: docker run mkell43/xmrig-cpu -o miningpool.url:port -u username -p password

FROM          alpine:3.6

ENV           XMRIG_DIR /xmrig-cpu
ENV           XMRIG_BUILD_DIR $XMRIG_DIR/build

RUN           apk --no-cache add build-base cmake curl git libuv-dev
# Use xmrig v2.4.2
RUN           git clone https://github.com/xmrig/xmrig.git $XMRIG_DIR && cd $XMRIG_DIR && \
    git reset --hard fd029201b00bab2948cbe0ed67ff162e10aa9dfe
RUN           mkdir $XMRIG_BUILD_DIR && cd $XMRIG_BUILD_DIR && \
    cmake .. -DWITH_HTTPD=OFF && make
RUN           mv $XMRIG_BUILD_DIR/xmrig /usr/bin/

ENTRYPOINT    ["xmrig"]
