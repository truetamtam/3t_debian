FROM debian:jessie

MAINTAINER Roman Ulashev <truetamtam@yandex.ru>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y dist-upgrade

# Install core dependencies
RUN apt-get install -y wget

RUN apt-get -y autoremove && \
    apt-get autoclean && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*