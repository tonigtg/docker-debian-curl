FROM debian:buster-slim

LABEL maintainer="Khoa Le <ltkhoa2711@gmail.com>"

RUN apt-get update \
    && apt-get install --no-install-recommends -y curl=7.64.0-4+deb10u1 ca-certificates \
    && rm -rf /var/lib/apt/lists/*

CMD ["curl", "-h"]
