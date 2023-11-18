ansible-linux-common
====================
```diff
# Project maturity (- Dev/+ Staging/@ Prod):
- Dev
```

This is [Ansible](https://www.ansible.com/)-role which provides baseline of configuration to *nix-based systems.
It is currently not compliant with any security profiles, and adheres to the authors preferences only.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

xor:
  - Red Hat Linux 9
  - AlmaLinux 9

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - common
         - { role: username.rolename, x: 42 }

License
-------

MIT License

Author Information
------------------

Harald Hauknes <harald at hauknes dot org>
