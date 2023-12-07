ansible-linux-common
====================
```diff
# Project maturity (- Dev/+ Staging/@ Prod):
- Dev
```

This is an [Ansible](https://www.ansible.com/)-role which provides baseline of configuration to *nix-based systems.
The goal is to leave a functioning and hardened system to which build your other ansible roles on.
This role is currently not compliant with any security profiles, and adheres to the authors preferences only.
While this role is not production ready it is designed to be so in the future.

Requirements
------------

You need ansible installed and also the community general modules which might or migh not be preinstalled with your ansible-distribution.
Run this command to make sure:
´´´
ansible-galaxy collection install community.general
´´´

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------
This role might "work" on a wide range of Linux-distributions, but below are the distros that are actually tested.
Now lets define "working" as that running this role on a system might leave it better off than not running
this role, but makes no presumtions to do good hardening or setup of that system.


xor:
  - Debian 12 "Bookworm"
  - Red Hat Linux 9
  - AlmaLinux 9
  - Fedora 38

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - common # Change to the folder you checked this role out to
         - { role: username.rolename, x: 42 }

License
-------

MIT License

Author Information
------------------

Harald Hauknes <harald at hauknes dot org>
