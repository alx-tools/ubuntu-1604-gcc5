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

RUN sed -i 's/# set bell-style none/set bell-style none/g' /etc/inputrc

ADD run.sh /etc/sandbox_run.sh
RUN chmod u+x /etc/sandbox_run.sh

# start run!
CMD ["./etc/sandbox_run.sh"]
