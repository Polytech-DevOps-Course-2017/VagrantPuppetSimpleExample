# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  #config.vm.box = "ubuntu/trusty64"
  config.vm.provision "shell", inline: "sudo apt-get --yes update"
  config.vm.provision "shell", inline: "sudo apt-get --yes upgrade"
  config.vm.provision "shell", inline: "sudo apt-get --yes install puppet"
  
  config.vm.define "master" do |subconfig|
    subconfig.vm.box = "ubuntu/trusty64"
	subconfig.vm.hostname = "master"
  end

  config.vm.define "node1" do |subconfig|
    subconfig.vm.box = "ubuntu/trusty64"
	subconfig.vm.hostname = "node1"
  end

  config.vm.define "node2" do |subconfig|
    subconfig.vm.box = "ubuntu/trusty64"
	subconfig.vm.hostname = "node2"
  end
  
  config.vm.provision :puppet do |puppet|
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file = "site.pp"
		puppet.module_path = "puppet/modules"
		puppet.facter = {
          "fqdn"         => "hostname",
		}
   end
	
end
