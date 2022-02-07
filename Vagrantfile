Vagrant.configure("2") do |config|

    config.vm.define "vm1" do |vm1|
        vm1.vm.box = "bento/ubuntu-20.04"
        vm1.vm.hostname = "cs438-dev-1"
        vm1.vm.network "private_network", type: "dhcp"
        vm1.vm.provider "virtualbox" do |v|
            v.name = "CS 438 VM 1"
            v.cpus = "2"
            v.memory = "4096"
        end
    end

    config.vm.define "vm2" do |vm2|
        vm2.vm.box = "bento/ubuntu-20.04"
        vm2.vm.hostname = "cs438-dev-2"
        vm2.vm.network "private_network", type: "dhcp"
        vm2.vm.provider "virtualbox" do |v|
            v.name = "CS 438 VM 2"
            v.cpus = "2"
            v.memory = "4096"
        end
    end

    config.vm.synced_folder "sp22_cs438_ericsz2", "/home/vagrant/sp22_cs438_ericsz2"
    config.vm.synced_folder "cs438", "/home/vagrant/cs438"
    config.vm.provision :shell, path: "provision.sh"
end
