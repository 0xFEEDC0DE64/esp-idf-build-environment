FROM ubuntu:focal

RUN apt update \
 && DEBIAN_FRONTEND=noninteractive apt install git-core cmake libusb-1.0-0 python3 python-is-python3 python3-virtualenv ccache -y \
 && rm /var/lib/apt/lists/* /var/log/* -Rf

RUN git clone --branch=v4.4-dev https://github.com/espressif/esp-idf.git esp-idf \
 && ./esp-idf/install.sh \
 && rm -Rf esp-idf
