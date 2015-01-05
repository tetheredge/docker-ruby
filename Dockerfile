FROM ubuntu:trusty
MAINTAINER Taylor Etheredge <taylor.etheredge@gmail.net>

# Ignore the APT warnings about not having a TTY
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev curl

# Install ruby-2.1.5 wihout documentation
RUN cd /tmp && \
	curl -O http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.5.tar.gz && \
	tar xf ruby-2.1.5.tar.gz && \
	cd ruby-2.1.5 && \
    ./configure --disable-install-doc && \
    make && \
    make install && \
    cd .. && \
    rm -rf ruby-2.1.5 ruby-2.1.5.tar.gz

# Install bundler without the documenation and add gemrc file
RUN gem install bundler --no-rdoc --no-ri && \
	echo "gem: --no-ri --no-rdoc" > ~/.gemrc

# Clean up APT and remove temporary files
RUN apt-get clean -qq && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*