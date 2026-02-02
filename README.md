# ansible-p14s
Ansible repo to bootsrap lenovo p14s gen6 amd laptop with i3wm

### Pre
Install OS, connect to internet


### Run the playbook
Install ansible, pull this repo
```sh
ansible-playbook -i inventory playbook.yml -K

# Only run packages
ansible-playbook -i inventory playbook.yml -K --tags pkg
```

### Post
* set up personal dotfiles
* log into browsers, IM, tools and mail
* borgmatic backup
* wireguard, ssh, gpg
