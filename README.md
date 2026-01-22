# ansible-p14s
Ansible repo to bootsrap lenovo p14s gen6 amd laptop with i3wm


### Run the playbook
```sh
ansible-playbook -i inventory playbook.yml -K
```

### Set up llm cli
```sh
pipx install llm
llm install llm-deepseek
llm keys set deepseek
cat some.log | llm -m deepseek-chat 'tldr this'
```
