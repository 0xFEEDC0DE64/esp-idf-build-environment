FROM ubuntu:focal

RUN apt update \
 && DEBIAN_FRONTEND=noninteractive apt install git-core cmake libusb-1.0-0 python3 python-is-python3 python3-virtualenv -y \
 && rm /var/lib/apt/lists/* /var/log/* -Rf

RUN git clone https://github.com/0xFEEDC0DE64/esp-idf.git esp-idf \
 && ./esp-idf/install.sh \
 && rm -Rf esp-idf
