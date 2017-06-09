#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
package 'java' do 

  action :install
end

service 'java' do 

  action :start
  
end 

template 'tmp/exampleTemplate' do
  source 'exampleTemplate.erb'

end


