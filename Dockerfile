FROM ingensi/oracle-jdk:centos6-latest
MAINTAINER Ingensi labs <contact@ingensi.com>

RUN yum update -y && yum install -y unzip
RUN curl -O http://downloads.typesafe.com/play/2.2.2/play-2.2.2.zip
RUN unzip play-2.2.2.zip -d / && rm play-2.2.2.zip && chmod a+x /play-2.2.2/play
ENV PATH $PATH:/play-2.2.2

EXPOSE 9000
RUN mkdir /app
WORKDIR /app
CMD ["play", "run"]
