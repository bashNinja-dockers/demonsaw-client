FROM debian:latest
MAINTAINER Andrew Morris <andrew@morris.guru>

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y libxcb-glx0 libX11-xcb1 libX11-xcb-dev libxi6 libfontconfig1 libXrender1 libglib2.0-0 libgl1-mesa-dev
RUN mkdir /opt/demonsaw
ENV QT_XKB_CONFIG_ROOT /usr/share/X11/xkb
WORKDIR /opt/demonsaw
ADD demonsaw_debian_64.tar.gz /opt/demonsaw
CMD ["./demonsaw"]
