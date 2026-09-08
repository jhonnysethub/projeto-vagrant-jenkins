
# -*- mode: ruby -*-.
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.define "jenkins" do |jenkins|
        jenkins.vm.box = "ubuntu/jammy64"
        jenkins.vm.hostname = "jenkins"
        jenkins.vm.network "private_network", ip: "192.168.56.10"

        jenkins.vm.provider "virtualbox" do |vb|
            vb.name = "jenkins"
            vb.memory = 1024
            vb.cpus = 2

        end


        jenkins.vm.provision "shell", path: "vagrant/scripts/setup-node.sh"
        jenkins.vm.provision "shell", path: "vagrant/scripts/setup-jenkins.sh"

    end

    #VM 2

    config.vm.define "prod" do |prod|
        prod.vm.box = "ubuntu/jammy64"
        prod.vm.hostname = "prod"
        prod.vm.network "private_network", ip: "192.168.56.11"

        prod.vm.provider "virtualbox" do |vb|
            vb.name = "prod"
            vb.memory =1024
            vb.cpus =1

        end

        prod.vm.provision "shell", path: "vagrant/scripts/setup-node.sh"

    end

end