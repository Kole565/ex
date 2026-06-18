mkdir -p /etc/ansible
cp ./ansible_hosts /etc/ansible/hosts

ssh-keygen

ssh-copy-id -p 2026 sshuser@hq-srv
ssh-copy-id -p 2026 sshuser@hq-cli
ssh-copy-id -p 2026 net_admin@hq-rtr
ssh-copy-id -p 2026 net_admin@br-rtr

echo "ADD 'ansible_python_interpreter=/usr/bin/python3' to /etc/ansible/ansible.cfg under [defaults] tab MANUALLY"

ansible all -m ping

