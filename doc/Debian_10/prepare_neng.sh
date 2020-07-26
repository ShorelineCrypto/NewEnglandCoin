sudo apt-get update
sudo apt-get -y install wget curl
sudo apt-get -y install build-essential 
sudo apt-get -y install g++ libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils 
sudo apt-get -y install libboost-all-dev

sudo apt-get -y install software-properties-common
sudo apt-get update

 
sudo apt-get -y install libzmq3-dev libbz2-dev zlib1g 
sudo apt-get -y install libprotobuf-dev protobuf-compiler
sudo apt-get -y install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler 
sudo apt-get -y install openssl

sudo apt-get -y install qt4-default

sudo apt-get -y install python-pip
sudo apt-get -y install python-setuptools
sudo pip install python-bitcoinrpc

sudo apt-get -y install git
#git clone https://github.com/ShorelineCrypto/NewEnglandCoin.git
git clone https://github.com/ShorelineCrypto/cheetah_cpuminer.git


# Berkeley DB: http://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz
# This can not be compiled and used for NENG wallet
# we obtained binaries from Ubuntu 18.04 and bundled in one folder

wget https://github.com/ShorelineCrypto/NewEnglandCoin/releases/download/v1.4.0/ubuntu20.04_x86_64_db-4.8.30.NC.tgz
tar xvfz ubuntu20.04_x86_64_db-4.8.30.NC.tgz 
sudo mv db-4.8.30.NC  /opt/
sudo mv bitcoin.conf /etc/ld.so.conf.d/

wget https://github.com/ShorelineCrypto/NewEnglandCoin/releases/download/v1.4.0/ubuntu20.04_x86_64_miniupnpc.tgz
tar xvfz ubuntu20.04_x86_64_miniupnpc.tgz
sudo mv miniupnpc /opt/
sudo mv miniupnpc.conf /etc/ld.so.conf.d/ 

wget https://github.com/ShorelineCrypto/NewEnglandCoin/releases/download/v1.4.0/ubuntu20.04_x86_64_openssl-1.0.0.tgz
tar xvfz ubuntu20.04_x86_64_openssl-1.0.0.tgz 
sudo mv openssl  /opt/
sudo mv openssl.conf /etc/ld.so.conf.d/ 

## reuse prior compiled boost libary for Ubuntu 18.04
wget https://github.com/ShorelineCrypto/NewEnglandCoin/releases/download/v1.2.1.1/ubuntu18.04_boost1.58.tgz
tar xvfz ubuntu18.04_boost1.58.tgz
sudo mv boost1.58  /opt/
sudo mv boost1.58.conf  /etc/ld.so.conf.d/
## link all libary files
sudo ldconfig
