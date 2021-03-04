#
#
application_identifier = 'cloud_aws_tomcat'
env = 'dev'

default['user'] = 'root'
default['group'] = 'root'

default['tomcat'][application_identifier]['http_port'] = 8_080
default['tomcat'][application_identifier]['java_heap'] = '-Xmx128m -Xmx1024m'
