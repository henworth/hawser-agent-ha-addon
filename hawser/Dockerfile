ARG BUILD_FROM=ghcr.io/finsys/hawser:latest
FROM ${BUILD_FROM}

COPY run.sh /run.sh

ENV DOCKER_HOST=tcp://172.30.32.1:2375
CMD [ "/run.sh" ]
