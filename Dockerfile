FROM ubuntu:19.04

WORKDIR /tevianApp

COPY tevianConsole /tevianApp
COPY libtevianDLL.so.1.0.0 /lib

RUN mkdir data
RUN apt-get update

RUN apt-get install -y libqt5core5a
RUN apt-get install -y libqt5network5
RUN apt-get install -y curl

ENTRYPOINT ["./tevianConsole"]

