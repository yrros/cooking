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

# Write a temp file
file '/tmp/motd' do
  content 'hello world - testing TDD'
end
#Put some data in Redis to test with

# Install PHP

# Install Apache
package 'apache2'
service 'apache2' do
    supports :status => true
    action [:enable, :start]
end

# configure the Firewall
# going to use the ufw community cookbook for this

# Pull the Page index.html to be the homepage

# Test the response on the webpage matches the desired input "IT WORKS"
