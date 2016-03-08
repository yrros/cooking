require 'spec_helper'

describe package('redis-server'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe package('redis-server'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe service('redis-server'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end

describe service('redis-server'), :if => os[:family] == 'ubuntu' do
  it { should be_enabled }
  it { should be_running }
end

describe port(6379) do
  it { should be_listening }
end
