docker-ruby
==============

Ruby (MRI) in a Docker container; based on Ubuntu Trusty with Ruby 2.1. It is
meant to be used as a foundation for Ruby applications.

Usage
-----

    docker run -i -t tetheredge/ruby bash
    # ruby -v
    ruby 2.1.0p0 (2013-12-25 revision 44422) [x86_64-linux]

Building
--------

Grab Dockerfile from this repository on Github

    docker build github.com/tetheredge/docker-ruby

Get a Docker image from Docker index

    docker pull tetheredge/ruby


