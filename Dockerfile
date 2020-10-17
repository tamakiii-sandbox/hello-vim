FROM debian:10.5

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      vim \
      make \
      curl \
      git \
      ripgrep \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

