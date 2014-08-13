#
# Cookbook Name:: apache-test1
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#This Recipe will install Apache, start the service on reboot and write homepage
#This is done following the Chef Fundamentals Webinar Module 3 (https://www.youtube.com/watch?v=71Cq4bCxgDk)

#Install Apache
package "apache2" do
	action :install
end

#Start Apache service on start/ reboot
service "apache2" do
	action [:start, :enable]
end

#write homepage
Cookbook_file "/var/www/index.html" do
	source "index.html"
	mode "0644"
end