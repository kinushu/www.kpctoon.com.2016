#!/usr/bin/env rackup
# encoding: utf-8

# This file can be used to start Padrino,
# just execute it from the command line.

require File.expand_path('../config/boot.rb', __FILE__)

if ENV['RACK_ENV'] == 'development'
  require 'rack-livereload'
  begin
    use Rack::LiveReload, no_swf: true
  rescue
    nil
  end
end

run Padrino.application
