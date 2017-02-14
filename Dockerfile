# weinre
#
# VERSION 0.1.0

FROM base/arch
MAINTAINER Logan Koester <logan@logankoester.com>

RUN pacman -Syu --noconfirm
RUN pacman -S nodejs --noconfirm
RUN npm install weinre -g

EXPOSE 80

ENTRYPOINT ["/usr/bin/weinre", "--httpPort 80", "--verbose", "--debug"]
