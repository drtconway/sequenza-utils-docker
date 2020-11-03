FROM ubuntu:bionic

RUN apt update && \
    apt install -y \
        build-essential git \
        python python-dev python-setuptools python-pip \
        bwa samtools tabix
RUN git clone https://drtomc@bitbucket.org/sequenzatools/sequenza-utils.git && \
    cd sequenza-utils && \
    python setup.py test && \
    python setup.py install --install-scripts=/usr/bin && \
    cd .. && \
    rm -rf sequenza-utils
