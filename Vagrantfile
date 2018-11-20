# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.box_check_update = false

  config.vm.host_name = 'development-web'
  config.vm.network "private_network", type: "dhcp"
  config.vm.synced_folder ".", "/vagrant", type: "nfs",
    mount_options: ['rw', 'vers=3', 'tcp', 'fsc' ,'actimeo=1']

  config.vm.network "forwarded_port", guest: 8080, host: 8080  # npm run dev / https only
  config.vm.provision :shell, path: "bootstrap.sh"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2000
  end

  config.vm.provider "virtualbox" do |v|
    v.customize [ "modifyvm", :id, "--uartmode1", "disconnected" ] # no ubuntu logs in root dir
  end

end
