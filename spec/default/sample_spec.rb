require 'spec_helper'

describe package('redis-server'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe service('redis-server'), :if => os[:family] == 'ubuntu' do
  it { should be_enabled }
  it { should be_running }
end

#check SSH is listening
describe port(22) do
  it { should be_listening }
end

#check Redis 6379 is listening
describe port(6379) do
  it { should be_listening }
end
