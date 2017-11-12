# usage: docker run mkell43/xmrig -o miningpool.url:port -u username -p password
# ex: docker run mkell43/xmrig -o mine.xmrpool.net:3333 -u 4Adq5EZWCJ2jh4kttRSoa3KegN3K3KVnkZdATgd1XQcnZt7cJmggXHkjXqrT3anyZ22j7DEE74GkbVcQFyH2nNiC3c7HGvC -p x

FROM          ubuntu:16.04
run           apt-get update && apt-get install -y software-properties-common
RUN           add-apt-repository -y ppa:jonathonf/gcc-7.1
RUN           apt-get update
RUN           apt-get install -y git build-essential cmake libuv1-dev libmicrohttpd-dev gcc-7 g++-7
RUN           git clone https://github.com/xmrig/xmrig.git && cd /xmrig/ && \
    git reset --hard fd029201b00bab2948cbe0ed67ff162e10aa9dfe
RUN           mkdir /xmrig/build && cd /xmrig/build && \
    cmake .. -DCMAKE_C_COMPILER=gcc-7 -DCMAKE_CXX_COMPILER=g++-7 && make
WORKDIR       /xmrig/build/
ENTRYPOINT    ["./xmrig"]
