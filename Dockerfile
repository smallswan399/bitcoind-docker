FROM debian:9.11-slim
COPY ["bitcoin-0.18.1-x86_64-linux-gnu.tar.gz", "/root/bitcoin-0.18.1-x86_64-linux-gnu.tar.gz"]
WORKDIR /root/
RUN tar -zxvf bitcoin-0.18.1-x86_64-linux-gnu.tar.gz
RUN rm bitcoin-0.18.1-x86_64-linux-gnu.tar.gz
ENTRYPOINT ["bitcoin-0.18.1/bin/bitcoind"]
VOLUME ["/root/.bitcoin/"]
EXPOSE 8332 8333 18332 18333 18443 18444
