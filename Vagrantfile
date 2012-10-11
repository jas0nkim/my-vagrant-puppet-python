Vagrant::Config.run do |config|

  # Enable the Puppet provisioner, with will look in manifests
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "default.pp"
    puppet.module_path = "modules"
  end

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "squeeze32"
    # (everything else is commented)
    # ...

  # Forward guest port 8000 to host port 8000 and name mapping
  config.vm.forward_port 8000, 8000

  # work around 'OSError: [Errno 30] Read-only file system' issue because virtual box shared folder doesn't allow symlinks
  #config.vm.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/SHARE_NAME", "1"]
  config.vm.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
end
