# Vagrant

## Important commands in vagrant

### To create a Vagrantfile and start a new machine

> Vagrant init

### To start your machine

> Vagrant up

### To acess the machine via ssh

> Vagrant ssh (machine name)

### Lets suppose that you're in a controlNode and want to acess another vm use the command bellow

> ssh vagrant@(machine name or ip)

### Then you have a vagrantfile file a many comments , the basics config that you need its below

> config.vm.define "controlNode" # ==> **machine name**

> config.vm.hostname = 'controlNode' # ==> **host name**

> config.vm.box = "ubuntu/trusty64" # **vagrat box its similar a image from docker or ubuntu**

> config.vm.network "private_network", ip: "192.168.1.8" #**your network**

> config.vm.synced_folder "./data", "/home/vagrant/data" #**if you want to paste files in a folder and then apper inside your virtual machine you sync**

> config.vm.provision "shell", path:"provision.sh" #**this is a shellScript that will run in the moment the you start your machine ,most the time its configuration scripts to install package and those stuff** ;

## This is my little project that has two machines

- First one its the **controlNode** , this one should have the **pyhton** and **ansible** installed

  1. generate ssh key using this command : ssh-keygen
  1. copy the ssh key generate
  1. acess the **vmHugo02** go to folder **/home/vagrant/.ssh/authorized_keys** and paste the copied key
  1. go to file /etc/ansible/hosts and add a group and the name of the machine that you want to acess, like this :
     > [pc]
     > vmHugo02

- second one its the **vmHugo02** that will be acess by **controlNode** via ssh
