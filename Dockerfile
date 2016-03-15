FROM ubuntu:14.04
MAINTAINER Andrei Coman <comandrei@gmail.com>
COPY copyables /
ADD https://dl.google.com/linux/linux_signing_key.pub /tmp/
RUN apt-key add /tmp/linux_signing_key.pub && apt-get -qq update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y xvfb google-chrome-stable build-essential python-dev python-virtualenv python-pip