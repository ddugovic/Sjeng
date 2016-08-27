FROM debian:oldstable
RUN apt-get update && apt-get install -y make g++
VOLUME /home/builder/Sjeng
WORKDIR /home/builder/Sjeng
RUN groupadd -r builder && useradd -r -g builder builder
USER builder
CMD make EXE=sjeng-x86_64 CC=gcc
