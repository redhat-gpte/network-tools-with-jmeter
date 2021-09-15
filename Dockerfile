FROM registry.redhat.io/openshift4/network-tools-rhel8:latest

ARG JMETER_VERSION=5.4.1

USER 0

RUN dnf install -y java-11-openjdk-devel \
 && wget https://downloads.apache.org//jmeter/binaries/apache-jmeter-${JMETER_VERSION}.tgz \
 && tar -C /opt -zxvf apache-jmeter-${JMETER_VERSION}.tgz \
 && ln -s /opt/apache-jmeter-${JMETER_VERSION}/bin/jmeter /bin/jmeter
