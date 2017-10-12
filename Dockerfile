FROM debian:jessie
MAINTAINER Alex Savchenko <alexey.savchenko@forma-pro.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -yqq ruby rubygems-integration
RUN gem install fakes3 -v 0.2.4
RUN mkdir -p /s3
ENTRYPOINT ["/usr/local/bin/fakes3"]
CMD ["-r",  "/s3", "-p",  "80"]
EXPOSE 80
