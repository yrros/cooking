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

# test that it creates a file /tmp/motd
it 'creates a file' do
chef_run = ChefSpec::Runner.new.converge(described_recipe)
expect(chef_run).to create_file('/tmp/motd')
end
