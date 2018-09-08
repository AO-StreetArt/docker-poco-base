FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install wget build-essential software-properties-common -y libz-dev
RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test
RUN apt-get -y update
RUN apt-get -y install git g++-6
RUN export CXX=g++-6
RUN export CC=gcc-6
RUN wget http://pocoproject.org/releases/poco-1.9.0/poco-1.9.0-all.tar.gz && tar xzvf poco-1.9.0-all.tar.gz
WORKDIR poco-1.9.0-all
RUN apt-get install libssl-dev openssl
RUN ./configure --omit=Data/ODBC,Data/MySQL
RUN make
RUN make install
WORKDIR /
