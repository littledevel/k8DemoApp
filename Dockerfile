FROM bitnami/minideb:latest
COPY demo /demo
ENTRYPOINT ["/demo"]