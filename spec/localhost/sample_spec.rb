require 'spec_helper'

describe package('redis-server'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe port(6379) do
  it { should be_listening }
end
