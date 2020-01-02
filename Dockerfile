FROM centos:7

ENV JAVA_HOME=/opt/jdk1.8.0_171
ENV PATH=$JAVA_HOME/bin:$PATH

COPY jdk-8u171-linux-x64.tar.gz /tmp

RUN yum -y install which \
    && yum -y install net-tools \
    && tar -C /opt -xvf /tmp/jdk-8u171-linux-x64.tar.gz \
    && yum clean all \
    && rm -rf /tmp/* && rm -rf /var/cache/yum

CMD bash --login
