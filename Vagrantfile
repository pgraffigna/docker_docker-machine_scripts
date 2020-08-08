Vagrant.configure("2") do |config|
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled: true	  

  config.vm.define "docker-machine" do |dm|
    dm.vm.box = "geerlingguy/ubuntu1804" 
    dm.vm.hostname = "docker-machine.test"
    dm.vm.network "private_network", ip: "192.168.60.10"
    dm.vm.provision "shell", path: "docker.sh"
    dm.vm.provision "shell", path: "docker-machine.sh"
  end

  config.vm.provider "virtualbox" do |vb|
    vb.name = "docker-machine"
    vb.memory = "2048"
    vb.cpus = "1"
  end  
end