docker-ruby
==============

Ruby (MRI) in a Docker container; based on Ubuntu Trusty (14.04.01 LTS) with Ruby 2.1 This is meant
to be used as a foundation for Ruby applications, as this only contains Ruby.

Usage
-----

    docker run -i -t tetheredge/ruby bash
    # ruby -v
    ruby 2.1.5p273 (2014-11-13 revision 48405) [x86_64-linux]

Building
--------

To get the Dockerfile from this repository on Github

    docker build github.com/tetheredge/docker-ruby

To get a Docker image from Docker index

    docker pull tetheredge/ruby


