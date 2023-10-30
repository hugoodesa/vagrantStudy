#!/bin/bash

#generate keygen
ssh-keygen

# Update the package list and upgrade installed packages
sudo apt update
sudo apt upgrade -y

# Install Python 3 and pip (Python package manager)
sudo apt install python3 -y
sudo apt install python3-pip -y

# Confirm the installed Python version
python3 --version
pip3 --version

# Install Ansible
sudo apt install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

# Confirm the installed Ansible version
ansible --version