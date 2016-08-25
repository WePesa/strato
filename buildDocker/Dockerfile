
FROM ubuntu

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 575159689BEFB442
RUN echo 'deb http://download.fpcomplete.com/ubuntu xenial main' | tee /etc/apt/sources.list.d/fpco.list

RUN apt-get update && apt-get install -y git emacs postgresql postgresql-server-dev-9.5 libleveldb-dev stack libpcre3-dev

ENV PATH="${PATH}:/root/.local/bin"
