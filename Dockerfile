FROM ubuntu:master-17aea27

MAINTAINER wangsh<462620215@qq.com>

RUN sudo apt-get update \
    && sudo apt-get install -y openjdk-7-jdk \
    && sudo apt-get install -y openjdk-7-jre
    
RUN echo "export JAVA_HOME=/usr/lib/jvm/Java-7-openjdk-amd64">>/etc/profile
RUN echo "export JRE_HOME=$JAVA_HOME/jre">>/etc/profile
RUN echo "export CLASSPATH=$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH">>/etc/profile
RUN echo "export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH">>/etc/profile

WORKDIR /work
