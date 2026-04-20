ansible-linux-common
====================
```diff
# Project maturity (- Dev/@ Staging/+ Prod):
+ Production
```

This is an [Ansible](https://www.ansible.com/)-role which provides a baseline-configuration including
packages and configuration changes on `*nix`-based systems.
It is meant as the building block as to which other **ansible**-roles can be built on.
It currently does not provide much of hardening for the system.  
This role is currently **not** compliant with any ANSI-security profiles and adheres to the *author*s preferences only.


At the moment the scope of this role is to provide working SSH and syncronized time as well as setting some sensible defaults of installed functionality for basic terminal usage. It's not expected to include any other features in the future except some hardening.


Role Variables
--------------
| Variable                      | Default   | Description |
| ----------------------------- | --------- | ----------- |
| default_hostname              | localhost | Replaces the targets hostname with the one defined in inventory if the current target hostname matches the value of this variable |
| timezone                      | Oslo      | Sets the timezone of the system, if unsure you should choose 'UTC' |
| common_perform_pgk_upgrades   | false     | Upgrades packages already installed on the system using its package-manager |
| common_perform_pkg_autoremove | false     | Removes packages deemed obsolete by the package-manager |


Requirements
------------
You need `ansible` installed for a control-node. Either as a seperate computer/VM or on the intended target. You need the Ansible module-collection `community general` (which often is pre-installed with your Ansible-distribution). This is the basis of any Ansible-control node.

I maintain a [script at Github](https://raw.githubusercontent.com/harahauk/ansible-help/refs/heads/main/install_ansible.sh) which automates installation in a way that do not interfere with system stability. The script installs the two module-packs as well.

On most systems these commands will lead to a working control node and is maintainable without the use of the script:  
```bash
dnf install ansible-core
ansible-galaxy collection install community.general
```
**Note:** Replace `dnf` with your package-manager like `apt` for Ubuntu/Debian-based OS.


Dependencies
------------
This role might **"work"** on a wide range of Linux-distributions, but below are the distros that are actually tested.
Now lets define **"working"** as that running this role on a system **might** leave it better off than not running
this role, but makes **no** presumtions to do good hardening or setup of that system.


xor:
  - Debian 12 "Bookworm"
  - Red Hat Linux 9
  - AlmaLinux 9
  - Fedora 38


Example Playbook
----------------

```ansible-playbook

- hosts:
  - my_clients
  - my_servers
  roles:
  - common # Change to the folder you checked this repository out as
  vars:
    common_perform_pkg_upgrades: no
    common_perform_pkg_autoremove: yes
```


License
-------
MIT License


Author Information
------------------
Harald Hauknes <harald at hauknes dot org>
