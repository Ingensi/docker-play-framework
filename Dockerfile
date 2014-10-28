FROM ingensi/oracle-jdk
MAINTAINER Ingensi labs <contact@ingensi.com>

RUN yum update -y && yum install -y unzip
RUN curl -O http://downloads.typesafe.com/typesafe-activator/1.2.10/typesafe-activator-1.2.10.zip
RUN unzip typesafe-activator-1.2.10.zip -d / && rm typesafe-activator-1.2.10.zip && chmod a+x /activator-1.2.10/activator
ENV PATH $PATH:/activator-1.2.10

EXPOSE 9000
RUN mkdir /app
WORKDIR /app
CMD ["activator", "run"]
