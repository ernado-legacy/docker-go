FROM ubuntu:latest
MAINTAINER Aleksandr Razumov <ernado@ya.ru>

RUN apt-get update
RUN apt-get install -y curl git bzr mercurial

ENV GOPATH	/go
ENV GOROOT	/usr/local/go
ENV PATH	$GOROOT/bin:$GOPATH/bin:$PATH
ENV GOVERSION	1.3

RUN curl -s https://storage.googleapis.com/golang/go$GOVERSION.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz
