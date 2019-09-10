AlexWorkstationAnsiblePlaybook
##############################

An Ansible playbook that bootstraps my workstation

Eventually, I would like to split the tasks into specific roles that
correspond to a specific kind of development environment. For example,
a 'python-dev' role or a 'react-dev' role that would configure the
environments accordingly.

What's required on the target host before running the playbook?

1. The target needs to have the public key of the master in authorized_keys
2. A passwordless sudo user needs to be configured.


TODO
####

* Manage sudo passwords properly. Research proper Ansible password handling
* Consider making roles to deploy different kinds of workstations
