FROM centos:7

RUN yum -y install which \
    && yum -y install net-tools \
    && curl -o /tmp/jdk-8u171-linux-x64.tar.gz ftp://admin:admin@deng2/jdk-8u171-linux-x64.tar.gz && tar -C /opt -xvf /tmp/jdk-8u171-linux-x64.tar.gz \
    && yum clean all \
    && rm -rf /tmp/* && rm -rf /var/cache/yum

ENV JAVA_HOME=/opt/jdk1.8.0_171
ENV PATH=$JAVA_HOME/bin:$PATH

CMD bash --login
