FROM ubuntu:xenial
MAINTAINER Kyle Manna

VOLUME ["/root/.bitcoin/"]
COPY ["bitcoin-0.18.1-x86_64-linux-gnu.tar.gz", "/root/bitcoin-0.18.1-x86_64-linux-gnu.tar.gz"]
COPY ["bitcoin.conf", "/root/.bitcoin/bitcoin.conf"]

WORKDIR /root/
RUN tar -zxvf bitcoin-0.18.1-x86_64-linux-gnu.tar.gz
RUN rm bitcoin-0.18.1-x86_64-linux-gnu.tar.gz
ENTRYPOINT ["bitcoin-0.18.1/bin/bitcoind"]
EXPOSE 8332 8333 18332 18333 18443 18444
