FROM dock0/service
MAINTAINER Jon Chen <bsd@voltaire.sh>

EXPOSE 69

RUN pacman -Syu --needed --noconfirm tftp-hpa

ADD default /srv/tftp/default

ADD F1.msg /srv/tftp/F1.msg

ADD http://stable.release.core-os.net/amd64-usr/current/coreos_production_pxe.vmlinuz /srv/tftp/stable/
ADD http://stable.release.core-os.net/amd64-usr/current/coreos_production_pxe_image.cpio.gz /srv/tftp/stable/

ADD http://beta.release.core-os.net/amd64-usr/current/coreos_production_pxe.vmlinuz /srv/tftp/beta/
ADD http://beta.release.core-os.net/amd64-usr/current/coreos_production_pxe_image.cpio.gz /srv/tftp/beta/

ADD http://alpha.release.core-os.net/amd64-usr/current/coreos_production_pxe.vmlinuz /srv/tftp/alpha/
ADD http://alpha.release.core-os.net/amd64-usr/current/coreos_production_pxe_image.cpio.gz /srv/tftp/alpha/

ADD run /service/tftpd/run
