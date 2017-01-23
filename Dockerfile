FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.0.3

RUN gem install abiquo-chef-agent --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["abiquo-chef-run"]
CMD ["--help"]
