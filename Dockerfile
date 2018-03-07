FROM ubuntu:16.04
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install build-essential
RUN apt-get -y install git
RUN apt-get -y install ruby
RUN apt-get -y install iputils-ping
RUN apt-get -y install net-tools

WORKDIR /app
RUN gem install bundler

EXPOSE 4567

COPY sampleapp /app/sampleapp
WORKDIR /app/sampleapp

CMD ./run.sh
