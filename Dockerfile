FROM 1.11.5
LABEL MAINTAINER="xieWei(1156143589@qq.com)"

WORKDIR /go/src/go-docker

COPY . .

RUN go mod vendor

RUN make

CMD [ "/bin/bash", "-c", "/go/src/go-docker" ]