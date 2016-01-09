FROM ubuntu
MAINTAINER Toanpt3 <toanpt3@vng.com.vn>
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
RUN apt-get install software-properties-common -y 
RUN sudo add-apt-repository ppa:webupd8team/java -y
RUN sudo apt-get update -y 
RUN echo "oracle-java7-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
RUN sudo apt-get install oracle-java7-installer -y
#RUN sudo apt-get install oracle-java7-set-default -y
