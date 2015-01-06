FROM ubuntu:trusty
MAINTAINER Taylor Etheredge <taylor.etheredge@gmail.net>
VERSION 0.0.1

# Ignore the APT warnings about not having a TTY
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y curl git-core

# Add Brightbox repository for Ruby package
RUN apt-get install -y software-properties-common && \
	apt-add-repository ppa:brightbox/ruby-ng && \
	apt-get update

# Install Ruby 2.1 package
RUN apt-get install -y ruby2.1

# Install bundler without the documenation and add gemrc file
RUN /bin/bash -l -c "gem install bundler --no-rdoc --no-ri && \
	echo 'gem: --no-ri --no-rdoc' > ~/.gemrc"

# Clean up APT and remove temporary files
RUN apt-get clean -qq && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*