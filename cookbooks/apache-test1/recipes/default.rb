#
# Cookbook Name:: apache-test1
# Recipe:: default
#
# Copyright 2014, AddOne IT Services Ltd.
#
# All rights reserved - Do Not Redistribute
#

#This Recipe will install Apache, start the service on reboot and write homepage
#This is done following the Chef Fundamentals Webinar Module 3 (https://www.youtube.com/watch?v=71Cq4bCxgDk)

package_name="apache2"
service_name="apache2"
document_root="/var/www"

if node["platform"] == "centos"
	package_name="httpd"
	service_name="httpd"
	document_root="/var/www/html"
end

#Install Apache
package package_name do
	action :install
end

#Start Apache service on start/ reboot
service service_name do
	action [:start, :enable]
end

# #write homepage
# Cookbook_file "#{document_root}/index.html" do
# 	source "index.html"
# 	mode "0644"
# end



template "#{document_root}/index.html" do
	source "index.html.erb"
	mode "0644"
end

