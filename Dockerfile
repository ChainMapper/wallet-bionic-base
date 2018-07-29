FROM ubuntu:bionic

RUN apt-get update \
    && apt-get -y upgrade \
	&& apt-get -y install libboost-system1.62.0 libboost-filesystem1.62.0 libboost-program-options1.62.0 \
	libboost-thread1.62.0 libboost-chrono1.62.0 libdb4.8 libdb4.8++ libssl1.0.0 unzip \
	libevent-2.1-6 libevent-pthreads-2.1-6 software-properties-common \
    && add-apt-repository ppa:bitcoin/bitcoin \
    && apt-get update \
    && apt-get -y install libdb4.8-dev libdb4.8++-dev unzip \
    && apt-get -y install wget libzmq5 libminiupnpc10