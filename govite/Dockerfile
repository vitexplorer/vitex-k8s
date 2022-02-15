FROM ubuntu:focal

RUN apt-get update && apt-get install -y \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

ADD gvite-v2.11.1-linux/ /govite

ENTRYPOINT [ "/govite/gvite" ]

CMD [ "--config=/govite/node_config.json" ]