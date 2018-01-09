#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
#

#node attributes in this case from ohai tool
if node['platform_family'] == 'rhel'
	package = "httpd"
elsif node['plaform_family'] == "debian"
	package = "apache2"
end

package 'apache2' do
#im trsting default behavior so no action 
#default action is install
	package_name package
end

service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end

