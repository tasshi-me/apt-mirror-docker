FROM ubuntu:18.04

MAINTAINER Masaharu TASHIRO <masatsr.kit@gmail.com>

RUN set -x \
    && apt-get -yqq update \
    && apt-get -yqq install apt-mirror --no-install-recommends \
    && apt-get -yqq autoremove \
    && apt-get -yqq clean \
    && rm -rf /var/lib/apt/lists* /var/tmp/* /tmp/* 

COPY mirror.list.d/ubuntu_xenial_amd64.list /etc/apt/mirror.list

COPY run_apt-mirror.sh /

CMD ["/run_apt-mirror.sh"]
