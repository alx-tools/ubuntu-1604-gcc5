# Container for developing with GCC 5 at Holberton School

FROM holbertonschool/base-ubuntu-1604
MAINTAINER Guillaume Salva <guillaume@holbertonschool.com>

RUN apt-get update

RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test
RUN apt-get update
RUN apt-get install -y gcc-5 g++-5

RUN rm -rf /usr/bin/gcc  
RUN ln -s /usr/bin/gcc-5 /usr/bin/gcc  

RUN apt-get install -y curl wget git
RUN apt-get install -y vim emacs

ADD run.sh /tmp/run.sh
RUN chmod u+x /tmp/run.sh

# start run!
CMD ["./tmp/run.sh"]
