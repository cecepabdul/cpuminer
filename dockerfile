FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget tar

WORKDIR /app

RUN wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.24/cpuminer-opt-linux.tar.gz && \
    tar -xvf cpuminer-opt-linux.tar.gz

CMD ["./cpuminer-sse2", "-a", "yespowerr16", "-o", "stratum+tcp://europe.mining-dutch.nl:9987", "-u", "cecepabdul.worker1", "-p", "webpassword=cecepabdul"]
