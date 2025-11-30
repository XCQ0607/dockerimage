# Build
FROM golang:latest

LABEL org.opencontainers.image.source="https://github.com/XCQ0607/gwebdav"

COPY . /go/src/github.com/mikea/gdrive-webdav/
RUN cd /go/src/github.com/mikea/gdrive-webdav/ && go install .


# Run
FROM debian:stable-slim  
RUN apt update && apt install -y ca-certificates

WORKDIR /root/
COPY --from=0 /go/bin/gdrive-webdav .
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

EXPOSE 8765
ENTRYPOINT ["./entrypoint.sh"]


