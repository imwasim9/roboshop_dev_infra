#!/bin/bash

component=$1

dnf install ansible -y
ansible-pull -U https://github.com/imwasim9/ansible-roboshop-tf-v2.git -e component=$component main.yaml
