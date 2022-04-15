FROM ubuntu:focal
RUN apt-get update
RUN apt-get -y install curl ruby git python wget python3 python3-pip
RUN gem install license_finder
RUN python3 -m pip install pip --upgrade
WORKDIR /scan
CMD /bin/bash -lc "license_finder --prepare --python-version=3"
