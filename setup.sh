#!/bin/bash

apt-get update
apt-get install -y wget curl unzip

## setup protobuf
cd /tmp && wget https://github.com/google/protobuf/archive/v$PROTOBUF_VERSION.tar.gz
tar xzf v$PROTOBUF_VERSION.tar.gz
cd protobuf-$PROTOBUF_VERSION
apt-get install -y autoconf automake libtool make g++
./autogen.sh
./configure CXXFLAGS=-I/usr/local/include LDFLAGS=-L/usr/local/lib
make && make install
ldconfig

# setup swift
cd /tmp && wget https://swift.org/builds/swift-3.0-release/ubuntu1404/swift-3.0-RELEASE/swift-3.0-RELEASE-ubuntu14.04.tar.gz -O swift.toolchain.tar.gz
tar xzf swift.toolchain.tar.gz
export PATH=/tmp/swift-3.0-RELEASE-ubuntu14.04/usr/bin:$PATH

# setup protobuf-swift
apt-get install -y clang libicu-dev libedit2 libxml2
cd /tmp && wget https://github.com/alexeyxo/protobuf-swift/archive/$PROTOBUF_SWIFT_VERSION.tar.gz && tar xzf $PROTOBUF_SWIFT_VERSION.tar.gz && cd protobuf-swift-$PROTOBUF_SWIFT_VERSION
./scripts/build.sh && swift build

# clean up
apt-get remove -y wget curl unzip
apt-get remove -y autoconf automake libtool make g++
apt-get remove -y clang libicu-dev libedit2 libxml2
rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
