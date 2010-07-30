#!/usr/bin/env ruby
require 'rubygems'
require 'websnap'
require 'system_timer'

SystemTimer.timeout_after(20.seconds) do
  ws = WebSnap.new('http://www.20min.ch', :format => 'png')
  ws.to_file('./20min.png')
end