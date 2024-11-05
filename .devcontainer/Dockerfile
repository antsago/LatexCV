FROM leplusorg/latex:sha-1b93dce

USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -q && apt install -qy git openssh-client
USER latex