# chef-cookbook
chef-Cookbook

Requirement
MongoDB repo file.

Usage

Insatallation of Mongo DB run below runlist in user data

Apply run_list in EC user data.

{ "run_list": ["role[chef-cookbook-mongodb]"] }


To Install Tomcat run below runlist in Ec2 instance.

{ "run_list": ["role[chef-cookbook-tomcat]"] }


To Install bonus run below runlist in Ec2 instance.

{ "run_list": ["role[chef-cookbook-bonus]"] }


