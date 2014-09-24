Vagrant.configure("2") do |config|
  config.vm.define "vagrant-docker" do |v|
    v.vm.provider "docker" do |d|
      d.build_dir = "."
      d.remains_running = true
      d.has_ssh = true
    end
    v.ssh.port = 22
    v.ssh.username = 'root'
    v.ssh.password = 'docker'
    v.vm.provision "shell", inline: "echo Welcome to vagrant-docker"
  end
end
