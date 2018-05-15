FROM ubuntu:18.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get --assume-yes dist-upgrade && \
    DEBIAN_FRONTEND=noninteractive apt-get --assume-yes install \
        curl \
        python \
        python-dev \
        python3 \
        python3-dev \
        vim && \
    apt-get autoremove --assume-yes && \
    apt-get clean && \
    rm --force --recursive /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl https://bootstrap.pypa.io/get-pip.py | python3 && \
    curl https://bootstrap.pypa.io/get-pip.py | python && \
    pip3 install pylint && \
    pip install pylint

COPY pylint2 pylint3 /usr/local/bin/

