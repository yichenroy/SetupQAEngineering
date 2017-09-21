#!/bin/bash

sudo apt-get update
sudo apt-get install --yes software-properties-common

sudo apt-add-repository --yes ppa:ansible/ansible

sudo apt-get update
sudo apt-get install --yes git curl ansible

ansible-playbook install.yml -i hosts --connection=local --verbose 
