# 
# cookbook name :: chef-cookbook
# Recipe:: install
#
application_identifier = 'install_mongodb'

remote_file '/temp/mongo.pyc' do
  source node['ui']['repo']
  mode '0755'
  owner settings['user']
  group setting['group']
  action :create
end

mongoDB_client = node['ui']['repo']
yum_package mongoDB_client do
  action :install
  timeout 36000
  only_if {  node['ui']['repo'].casecmp('RHEL') }
end


