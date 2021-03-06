#
# Cookbook Name:: monitoring
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require_relative '../spec_helper'

describe 'monitoring::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'fedora', version: '26')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      chef_run # This should not raise an error
    end
  end
end
