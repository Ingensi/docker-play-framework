FROM ingensi/oracle-jdk
MAINTAINER Ingensi labs <contact@ingensi.com>

RUN yum update -y && yum install -y unzip
RUN curl -O http://downloads.typesafe.com/typesafe-activator/1.3.4/typesafe-activator-1.3.4.zip 
RUN unzip typesafe-activator-1.3.4.zip -d / && rm typesafe-activator-1.3.4.zip && chmod a+x /activator-1.3.4/activator
ENV PATH $PATH:/activator-1.3.4

EXPOSE 9000 8888
RUN mkdir /app
WORKDIR /app

CMD ["activator", "run"]
