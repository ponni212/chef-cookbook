# 
# cookbook name :: chef-cookbook
# Recipe:: install
#
application_identifier = 'install_mongodb'

# Copy of Mongo DB file for backup

remote_file '/temp/mongo.pyc' do
  source node['database']['client']['path']
  mode '0755'
  owner settings['user']
  group setting['group']
  action :create
end

# install Mongo DB
mongoDB_client = node['database']['client']['path']
yum_package mongoDB_client do
  action [:install, :start]
  timeout 36000
  only_if {  node['platform_family'].casecmp('RHEL') }
end

cert_request 'qet_certificate' do
  action :create
  ca_env 'dev'
  cert_format 'x509'
end  


