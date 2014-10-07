vagrant-docker
==============

**WARNING: This works wonderfully except for the minor issue of data not being saved :) This issue should soon be resolved by [boot2docker pull #534](https://github.com/boot2docker/boot2docker/pull/534) (and its propogation to Vagrant's boot2docker image).**

Docker in Vagrant starter project. This provides the ability to `vagrant up` a docker container which has `/vagrant` mapped to the base directory.

### Usage

    vagrant up
    vagrant ssh
    cd /vagrant
    ls -l # The contents of this git repo

