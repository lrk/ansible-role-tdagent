Ansible Role: Treasure Data td-agent ([lrk.tdagent](https://galaxy.ansible.com/lrk/td-agent/))
=========
[![Build Status](https://travis-ci.org/lrk/ansible-role-tdagent.svg?branch=master)](https://travis-ci.org/lrk/ansible-role-tdagent)
[![Galaxy](https://img.shields.io/badge/galaxy-lrk.td--agent-blue.svg)](https://galaxy.ansible.com/lrk/td-agent)
![Ansible](https://img.shields.io/ansible/role/d/20339.svg)
![Ansible](https://img.shields.io/badge/dynamic/json.svg?label=min_ansible_version&url=https%3A%2F%2Fgalaxy.ansible.com%2Fapi%2Fv1%2Froles%2F20339%2F&query=$.min_ansible_version)
![Ansible](https://img.shields.io/ansible/quality/20339)

An Ansible Role that install the Server-Side Agent called Treasure Agent (td-agent), to collect server-side logs and events.

Supported OSes
--------------
- Centos 7

Requirements
------------

None

Role Variables
--------------

Available variables along with default values are listed below (see `defaults/main.yml`)
```yml

# td-agent version
td_agent_version: 3                      # version e.g 2 ,3 ..

# User and group
tdagent_user: td-agent                      # user name
tdagent_group: td-agent                     # group name

# Directory for conf.d configurations
tdagent_conf_dir: "/etc/td-agent"                       # path of the base td-agent configuration directory
tdagent_confd_dir: "/{{ tdagent_conf_dir }}/conf.d"     # path of the conf.d directory

# List of user defined templates files, path relative to playbook_dir
tdagent_confd_templates: []                 # dictionnary (src,dest) containing templates for user defined configuration to place into tdagent_confd_dir
                                            # src: template source file, path relative to playbook_dir
                                            # dest: final configuration file name, MUST BE .conf
# Example:
# tdagent_confd_templates:
#   - { src: "path/to/my/template.confj2", dest: "myconf.conf"}
#   - ...

# List of plugins names to install
tdagent_plugins: []
# Example:
# tdagent_plugins:
#     - fluent-plugin-secure-forward
#     - fluent-plugin-elasticsearch
#     - fluent-plugin-multiprocess

# Enable forwarding
tdagent_forward_enabled: true               # enable/disable event forwarding configuration  
tdagent_forward_bind: 0.0.0.0               # bind interface       
tdagent_forward_port: 24224                 # listening port   

# Enable HTTP input via POST
tdagent_http_input_enabled: true            # enable/disable http input configuration
tdagent_http_input_bind: 0.0.0.0            # bind interface       
tdagent_http_input_port: 9880               # listening port   
tdagent_http_input_keepalive_timeout: 10s   # keepalive timeout              

# Enable Monitoring Agent: retrieve internal metrics in JSON via HTTP
tdagent_monitor_agent_enabled: true         # enable/disable monitor agent configuration
tdagent_monitor_agent_bind: 0.0.0.0         # bind interface
tdagent_monitor_agent_port: 24220           # listening port

```

Dependencies
------------

None

Example Playbook
----------------

    TODO
    - hosts: servers
      roles:
         - lrk.tdagent

License
-------

Apache License Version 2.0

References
----------

- [Overview of Server-Side Agent (td-agent)](https://docs.treasuredata.com/articles/td-agent)

Author Information
------------------
This role was created by [Lrk](https://github.com/lrk).
