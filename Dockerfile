FROM ubuntu:12.04
MAINTAINER inthecloud247 "inthecloud247@gmail.com"

ENV LAST_UPDATED 2013-12-18

# Apt-cacher-ng (for caching apt packages during builds)
#RUN \
# /sbin/ip route | awk '/default/ { print "Acquire::http::Proxy \"http://"$3":3142\";" }' > /etc/apt/apt.conf.d/30proxy; \
# echo Proxy: `cat /etc/apt/apt.conf.d/30proxy`;


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

