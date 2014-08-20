FROM dock0/service
MAINTAINER Jon Chen <bsd@voltaire.sh>

RUN pacman -Syu --needed --noconfirm tftp-hpa

ADD pxelinux.cfg /srv/tftp/pxelinux.cfg/default

ADD run /service/tftpd/run
