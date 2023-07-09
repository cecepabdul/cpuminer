FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget

WORKDIR /app

RUN wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.24/cpuminer-opt-linux.tar.gz
    tar -xvf cpuminer-opt-linux.tar.gz

CMD ["tail", "-f", "/dev/null"]
