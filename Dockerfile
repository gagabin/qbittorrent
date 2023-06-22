FROM docker.io/library/alpine:latest
RUN apk upgrade --no-cache
RUN apk add --no-cache qbittorrent-nox s6-overlay
COPY /root /
ENV WEBUI_PORT=8080
EXPOSE 8080 6881 6881/udp
ENTRYPOINT ["/init"]
