#
# cookbook naame = chef-cookbook
# apt-get update
# apache install
#

application_identifier = 'cloud_apache'


bash 'initial commands' do
  code <<-EOL
    sudo apt-get update
    apt-get install build-essential libssl-dev libyaml-dev libreadline-dev openssl curl git-core zlib1g-dev bison libxml2-dev libxslt1-dev libcurl4-openssl-dev nodejs libsqlite3-dev sqlite3
  EOL
end


directory '~/ruby' do
  action: create
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
end

remote_file '~/ruby/ruby-2.1.3.tar.gz' do
  source 'http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.3.tar.gz'
  action: create
  owner 'root'
  group 'root'
  mode '0755'  
  action :create
end

execute 'unzip ruby-2.1.3.tar.gz' do
  command 'tar zxvf ruby-2.1.3.tar.gz'
  cwd '~/ruby/'
  action :run
end


bash 'install commands' do
  code <<-EOL
  cd ruby-2.1.3
  sudo ruby install 
 EOL
end

# apache installation

include_recipe 'apache-http_chef'
apache-http_chef application_identifier do
  action :create
end

include_recipe 'mysql_chef'
mysql_chef application_identifier do
  action :create
end
cert_request 'qet_certificate' do
  action :create
  ca_env 'dev'
  cert_format 'x509'
end
