#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'postgresql-server' do 
	notifies :run, 'execute[postgresqul-init]'
end

execute 'postgresql-init' do
	#initialize postgresql db
	command 'postgresql-setup initdb'
	#**use this action to prevent the above command from running unless is is NOTIFIED**
	action :nothing
end

service 'postgresql' do
	action [:enable, :start]
end
