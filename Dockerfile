FROM ubuntu
RUN apt-get update
RUN apt-get -y install rlwrap sqlite socat run-one telnet
EXPOSE 12345
