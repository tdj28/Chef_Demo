#
# Cookbook Name:: demoload
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "databaseup" do
     command "/vagrant/bootstrap.sh"
     user "root"
end


