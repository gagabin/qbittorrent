FROM docker.io/library/alpine:latest
RUN apk upgrade --no-cache
RUN apk add --no-cache qbittorrent-nox execline
COPY /init /
ENV WEBUI_PORT=8080
ENV WEBUI_ALTERNATIVE=false
EXPOSE 8080 6881 6881/udp
ENTRYPOINT ["/init"]
