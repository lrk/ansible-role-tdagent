#!/bin/bash
set +x

if [ ! -d "/vagrant/tests/roles" ]
then
  mkdir -p /vagrant/tests/roles
fi

if [ ! -d "/vagrant/tests/roles/ansible-tdagent" ]
then
  ln -s /vagrant /vagrant/tests/roles/ansible-tdagent
fi

ansible-playbook -i tests/inventory --connection=local tests/vagranttest.yml $*
