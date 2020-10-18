FROM debian:10.5

COPY ./vendor/vim/vim /tmp/vim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      build-essential \
      libncurses-dev \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN make -C /tmp/vim/src && \
    make -C /tmp/vim/src install

RUN rm -rf /tmp/vim && \
    apt-get auto-remove -y && \
    apt-get clean

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      curl \
      git \
      ripgrep \
      locales \
      npm \
      exuberant-ctags \
      file \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN sed -i -E 's/# (en_US.UTF-8)/\1/' /etc/locale.gen && \
    locale-gen && \
    update-locale LANG=en_US.UTF-8

ENV PATH /usr/local/bin:$PATH
