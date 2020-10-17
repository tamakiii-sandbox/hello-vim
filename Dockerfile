FROM debian:10.5

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      vim \
      make \
      curl \
      git \
      ripgrep \
      locales \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN sed -i -E 's/# (en_US.UTF-8)/\1/' /etc/locale.gen && \
    locale-gen && \
    update-locale LANG=en_US.UTF-8

