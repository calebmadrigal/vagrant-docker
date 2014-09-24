vagrant-docker
==============

Docker in Vagrant starter project. This provides the ability to `vagrant up` a docker container which has `/vagrant` mapped to the base directory.

### Usage

    vagrant up --provider=docker
    vagrant ssh # Password: vagrant
    cd /vagrant
    ls -l # The contents of this git repo

Note that if you leave off the `--provider=docker`, you will get this error message:

    There are errors in the configuration of this machine. Please fix
    the following errors and try again:

    vm:
    * A box must be specified.

