#
# Cookbook Name:: apt-test1
# Recipe:: default
#
# Copyright 2014, AddOne IT Services Ltd.
#
# All rights reserved - Do Not Redistribute
#

execute "apt-get update" do
	command "apt-get update"
end