FROM golang:1.11
LABEL MAINTAINER="xieWei(1156143589@qq.com)"

WORKDIR /go/src/go-docker

COPY . .


RUN make

CMD [ "/bin/bash", "-c", "/go/src/go-docker" ]