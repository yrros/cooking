#
# Cookbook Name::
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'chefspec'

describe 'cooking::default' do
let(:chef_run) {
   ChefSpec::Runner.new.converge(described_recipe)
}

# test that it creates a file /tmp/data.txt
it 'Redis Input File Present' do
chef_run = ChefSpec::Runner.new.converge(described_recipe)
expect(chef_run).to create_file('/tmp/data.txt')
end

# test that the out file for redis has data in it /tmp/out_data.txt
it 'Redis Output File Present' do
chef_run = ChefSpec::Runner.new.converge(described_recipe)
expect(chef_run).to create_file('/tmp/out_data.txt')
end

end
