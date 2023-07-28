FROM alpine:latest


RUN apk --update add gcc make g++ zlib-dev libc-dev linux-headers openssl-dev

WORKDIR /nmap_src
COPY . .
RUN ./configure
RUN make
RUN make install

