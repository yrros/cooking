require 'spec_helper'

describe package('redis-server') do
    it { should be_installed }
end
