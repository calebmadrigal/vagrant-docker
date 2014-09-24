Vagrant.configure("2") do |config|
  config.vm.provider "docker" do |d|
    d.build_dir = "."
    d.remains_running = true
    d.has_ssh = true
  end
  config.ssh.port = 1337
  config.ssh.username = "root"
  config.ssh.password = "docker"
end
