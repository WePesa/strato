#!/bin/bash

apt-get -y install \
  postgresql postgresql-server-dev-9.5 libleveldb-dev \
  libpcre3-dev libpcre++-dev curl
curl -sSL https://get.haskellstack.org/ | sh
stack install alex happy
