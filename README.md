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

At the moment the scope of this role is to provide working SSH and syncronized time as well as setting some sensible defaults of installed functionality for basic terminal usage. It'snot expected to include any other features.

Requirements
------------

You need ansible [installed](./install_ansible.sh) and also the community general modules which might or migh not be preinstalled with your ansible-distribution.
This role comes with a [script](./install) that might or might not setup Ansible correctly for you.
On most systems this will do:
´´´
dnf install ansible-core
ansible-galaxy collection install community.general
´´´
Note: Replace dnf with your package manager like 'apt' for Ubuntu/Debian-based OS.

Role Variables
--------------

| Variable | Mandatory | Description |
| -------- | --------- | ----------- |
| timezone | No        | Sets the timezone of the system, if unsure you should select 'UTC' | 

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
