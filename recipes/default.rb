#
# Cookbook Name::
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Install Redis server
package 'redis-server'

service 'redis-server' do
    supports :status => true
    action [:enable, :start]
end

# Write a temp file for unit testing fun
motd = node.default['cooking']['motd-message']
#motd = "hello mum"
file '/tmp/motd' do
  content motd
end

#Put some data in Redis to test with
# import a script file which puts data into redis from a resource

# configure the Firewall
# going to use the Firewall community cookbook for this (from inside my file firewall.rb)
include_recipe 'cooking::firewall'
