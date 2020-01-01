FROM centos:7

RUN yum -y install which \
    && yum -y install net-tools \
    && yum -y install java-1.8.0-openjdk \
    && yum clean all \
    && rm -rf /tmp/* && rm -rf /var/cache/yum

CMD bash --login
