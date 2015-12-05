FROM conetix/wordpress-with-wp-cli

MAINTAINER James S. Moore <james 'at' ohmydocker com>

USER root

RUN apt-get -y update
RUN apt-get -y install python-software-properties curl build-essential libxml2-dev libxslt-dev git ca-certificates sudo net-tools vim wget
RUN apt-get -y dist-upgrade

RUN apt-get -y install locales
RUN echo 'en_US.UTF-8 UTF-8'>>/etc/locale.gen
RUN locale-gen
ENV LANG en_US.UTF-8

RUN apt-get -y autoremove
RUN apt-get clean

WORKDIR /var/www/html
ADD wp-cli.yml ./
ADD run.sh ./

RUN chmod +x ./run.sh
