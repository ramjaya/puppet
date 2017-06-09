#
# Cookbook Name:: tomcat7
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

package 'tomcat7' do 

  action :install
end

service 'tomcat7' do 

  action :start
  
end 

template 'tmp/exampleTemplate' do
  source 'exampleTemplate.erb'

end

