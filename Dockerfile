FROM ubuntu
ADD /hello.txt hello.txt
RUN apt-get update
RUN apt-get -y install rlwrap sqlite socat
EXPOSE 12345
