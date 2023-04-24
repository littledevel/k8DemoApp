FROM bitnami/minideb:latest
RUN apt-get update && apt-get install -y dnsutils curl wget netcat

COPY demo /demo
ENTRYPOINT ["/demo"]