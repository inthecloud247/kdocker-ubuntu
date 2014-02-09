FROM ubuntu:12.04
MAINTAINER inthecloud247 "inthecloud247@gmail.com"

# Update Ubuntu & Install base packages
RUN \
 sed 's/main$/main universe/' -i /etc/apt/sources.list; \
 apt-get update; \
 apt-get -y -u upgrade; \
 apt-get -y install \
  apt-utils \
  pkg-config \
  vim.tiny \
  curl \
  wget \
  rsync \
  unzip \
  sudo
