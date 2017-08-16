#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#Recipe Postgresql installer.

package 'postgresql-server' do
	notifies :run, 'excute[postgresql-init]'
end

excute 'postgresql-initl' do
	command 'postgresql-setup initdb'
	action :nothing
end

service 'postgresql' do
	action [:enable, :start]
end
