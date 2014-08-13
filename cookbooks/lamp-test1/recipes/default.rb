#
# Cookbook Name:: apache-test1
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#This Recipe will install Apache and start the service on reboot

#Install Apache
package "apache2" do
	action :install
end

	#Start Apache service on start/ reboot
	service "apache2" do
		action [:start, :enable]
	end


#Install PHP
package "php5" do
	action :install
end

#Install PHP
package "libapache2" do
	action :install
end