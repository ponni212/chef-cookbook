name 'chef-cookbook'
maintainer 'Ravi Kiran alapati'
license 'All Rights Recived'
version '0.0.1'
supports 'redhat'
chef_version '>=12.4' 

source_url 'https://github.com/chef-cft/workshops'
issues_url 'https://github.com/chef-cft/workshops'

depends 'mongodb', '=0.06.22'
depends 'tomcat_2021', '=8.0.36'
depends 'apache-http_chef', '=0.2.06'
depends 'mysql_chef', '=10.5.2'

depends 'aws-cert_cloud_ca', '=0.0.34'
