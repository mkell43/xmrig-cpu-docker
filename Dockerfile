# usage: docker run mkell43/xmrig-cpu -o miningpool.url:port -u username -p password

FROM          alpine as build

ENV           XMRIG_DIR /xmrig-cpu
ENV           XMRIG_BUILD_DIR $XMRIG_DIR/build

RUN           apk --no-cache add build-base cmake curl git libuv-dev openssl-dev
RUN           apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing hwloc-dev
# Use xmrig v2.4.2
RUN           git clone https://github.com/xmrig/xmrig.git $XMRIG_DIR && cd $XMRIG_DIR
RUN           mkdir $XMRIG_BUILD_DIR && cd $XMRIG_BUILD_DIR && \
    cmake .. -DWITH_HTTPD=OFF && make
RUN           mv $XMRIG_BUILD_DIR/xmrig /usr/bin/

FROM          alpine
RUN           apk --no-cache add libuv-dev
RUN           apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing hwloc-dev
COPY          --from=build /usr/bin/xmrig /usr/bin/
ENTRYPOINT    ["xmrig"]
