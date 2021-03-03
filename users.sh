!/bin/bash

# some example to create user
#
# create a user
# user add ravi
#
# set the home directory
# useradd -d /data/project ravi
#
#create user with custom userid
# useradd -u dev ravi
#
# create user with specific group id's
# useradd -u 1000 -g 500 ravi
#
# create user with specific group id's
# useradd -G admin,developer,scrum ravi

# some example to create group

# create a group
# groupadd admin
#
groupadd admin
useradd -G admin ravi

