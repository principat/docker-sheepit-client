FROM ubuntu
ENV HOME /home/sheepit/
RUN mkdir -p $HOME/workdir
WORKDIR $HOME
RUN apt-get update
RUN apt-get -y install openjdk-8-jre
COPY sheepit.conf sheepit.sh sheepit-client.jar $HOME
RUN chmod a+x sheepit.sh
CMD ./sheepit.sh
