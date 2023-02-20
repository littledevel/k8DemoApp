FROM bitnami/minideb:latest
COPY demo /demo
ENV DEMO_ADDRESS "0.0.0.0"
ENV DEMO_PORT 8011
ENTRYPOINT ["/demo"]