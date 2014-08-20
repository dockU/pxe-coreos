FROM dock0/service
MAINTAINER Jon Chen <bsd@voltaire.sh>

RUN pacman -Syu --needed --noconfirm tftp-hpa

ADD pxelinux.cfg /srv/tftp/pxelinux.cfg/default

ADD http://stable.release.core-os.net/amd64-usr/current/coreos_production_pxe.vmlinuz /srv/tftp/pxelinux.cfg/
ADD http://stable.release.core-os.net/amd64-usr/current/coreos_production_pxe_image.cpio.gz /srv/tftp/pxelinux.cfg/

ADD run /service/tftpd/run
