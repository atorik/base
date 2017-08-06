FROM debian

MAINTAINER atorik <atorik@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN /bin/bash -c  'source $HOME/.bashrc ;\
  echo $HOME'
RUN /bin/bash -c  'source $HOME/.bashrc ; echo $HOME'

RUN apt-get update && \
  apt-get install -yq --no-install-recommends \
  build-essential \
  bzip2 \
  ca-certificates \
  emacs \
  git \
  jed \
  libsm6 \
  libxrender1 \
  locales \
  pandoc \
  python-dev \
  sudo \
  texlive-latex-base \
  texlive-latex-extra \
  texlive-fonts-extra \
  texlive-fonts-recommended \
  texlive-generic-recommended \
  unzip \
  vim \
  wget \
  && apt-get clean && \
  rm -rf /var/lib/apt/lists/*
