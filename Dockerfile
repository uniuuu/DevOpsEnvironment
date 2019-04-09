# Dockerfile

# ==> Choose a base image to emulate Linux distribution...
#FROM williamyeh/ansible:ubuntu16.04
#FROM williamyeh/ansible:ubuntu14.04
#FROM williamyeh/ansible:debian9
#FROM williamyeh/ansible:debian8
FROM williamyeh/ansible:centos7
#FROM williamyeh/ansible:alpine3


# ==> Copying Ansible playbook...
WORKDIR /usr/local/share
COPY  .  /usr/local/share

# ==> Creating inventory file...
RUN echo 172.25.50.2 > inventory

# ==> Executing Ansible...
#RUN ansible-playbook -i inventory services.yml --check \
#      --connection=local --become 
