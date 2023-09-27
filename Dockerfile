FROM debian:12

LABEL maintainer="toni <ngajarin.team@gmail.com>"

RUN apt-get update \
    && apt-get install --no-install-recommends -y curl ca-certificates \
    && rm -rf /var/lib/apt/lists/*

CMD ["curl", "-h"]
