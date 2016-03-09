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

#copy the Redis data file to the server
template '/tmp/data.txt' do
  source 'KVs.red.erb'
end

#Put some data in Redis to test with
# import a script file which puts data into redis from a resource
bash 'install_something' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
  echo testdata > testdata.txt
  cat data.txt | nc localhost 6379 > /dev/null
  EOH
end


#Get data from Redis and put into file /tmp/out_data.txt


# configure the Firewall
# going to use the Firewall community cookbook for this (from inside my file firewall.rb)
include_recipe 'cooking::firewall'
