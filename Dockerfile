FROM golang:1.11
LABEL MAINTAINER="xieWei(1156143589@qq.com)"

ENV GO111MODULE on
EXPOSE 9999
WORKDIR /go/src/go-docker

COPY . .

RUN go mod vendor

RUN make

CMD [ "bash", "-c", "/go/src/go-docker/go-docker;" ]