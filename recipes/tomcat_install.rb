application_identifier = 'cloud_aws_tomcat'

include_recipes 'b_iac_cc_java::install_openjre_Zulu8'

remote_file 'Zulu-jdk-8 package' do
  source 'https://java.downlodes.com/zulu'
  path '/usr/java/zulu.tar.gz'
  action: create
end

bash 'untar Zulu-jdk-8 package'
  code <<-EOL
    cd /usr/java
    tar zxvf zulu.tar.gz
  EOL
end

bash 'symbolic links for Zulu' do
  code <<-EOL
    in -s /usr/java/zulu8.44.0.12-sa-jdk8.0.242-linex_x64/bin/java /usr/bin/java
  EOL
end  

tomcat_2021 application_identifier do
  action [:create, :install]
end



