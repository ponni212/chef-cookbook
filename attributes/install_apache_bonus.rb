#
# cookbook :: chef-cookbook
# apache intallation
#

application_identifier = 'cloud_apache'


default['httpd'][application_identifier]['admin_name'] = 'Ravi kiran Alapat'

modlist = %w[alias authn_anon authz_default authz_host authz_user cgi dir env headers ssl proxy_ajp proxy_balancer unique_id vhost_alias]




default['user'] = root
default['group'] = root

default['httpd'][application_identifier]['modproxy']['ajp']['status'] = 'on'
default['httpd'][application_identifier]['vhost_port'] = 8_081
default['httpd'][application_identifier]['listen_interface'] = ["#{binhost}:8081"]
default['httpd'][application_identifier]['rewite_log']['level'] = '5'
default['httpd'][application_identifier]['modproxy']['preservehost'] = 'on'
default['httpd'][application_identifier]['modproxy']['ajp']['cluster']['cluester-1']['member'] = ['ajp://localhost:3000/', 'route1']
default['httpd'][application_identifier]['location'] = {
  'proxyPass' => 'http://localhost:3000/',
  'proxypassReverse' => 'http://localhost:3000/'
}
