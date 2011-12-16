dir = File.dirname(__FILE__)
$LOAD_PATH.unshift dir unless $LOAD_PATH.include?(dir)

require 'rubygems'
require 'erb'
require 'active_support'
require 'active_support/core_ext'
require 'blerg/generator'
