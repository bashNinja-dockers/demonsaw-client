FROM debian:latest
MAINTAINER Mike Weaver <mike@thebash.ninja>

RUN apt-get update
RUN apt-get -y upgrade
RUN mkdir /opt/demonsaw
ENV HOME /home/demonsaw
ENV QT_XKB_CONFIG_ROOT /usr/share/X11/xkb
WORKDIR $HOME

RUN apt-get install -y \
    curl \
    libxcb-glx0 \
    libX11-xcb1 \
    libX11-xcb-dev \
    libxi6 \
    libfontconfig1 \
    libXrender1 \
    libglib2.0-0 \
    libgl1-mesa-dev && \
    rm -rf /var/lib/apt/lists/* && \
    useradd --create-home --home-dir $HOME demonsaw && \
    mkdir -p /home/demonsaw/Downloads && \
    curl -SL https://www.demonsaw.com/download/3.1.0/demonsaw_debian_64.tar.gz \
    | tar xvz -C /opt/demonsaw

RUN chown -R demonsaw:demonsaw $HOME && \
    chmod 0755 /opt/demonsaw/demonsaw && \
    chmod 0755 /opt/demonsaw/demonsaw_cli

USER demonsaw
EXPOSE 80
CMD ["/opt/demonsaw/demonsaw"]
