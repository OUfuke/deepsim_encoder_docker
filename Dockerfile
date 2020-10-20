FROM ubuntu:16.04

SHELL ["/bin/bash", "-c"]

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt update
RUN apt -y upgrade

RUN apt-get -y install wget unzip curl openjdk-8-jdk git tzdata g++ mercurial make maven ant eclipse

# build WALA
RUN mkdir /git
WORKDIR /git
RUN git clone https://github.com/wala/WALA
WORKDIR WALA
RUN ./gradlew assemble
WORKDIR /

RUN wget https://ftp.riken.jp/net/apache//commons/io/binaries/commons-io-2.8.0-bin.zip
RUN unzip -q commons-io-2.8.0-bin.zip
RUN rm commons-io-2.8.0-bin.zip

WORKDIR /volume

