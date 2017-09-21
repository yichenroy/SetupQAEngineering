FROM ubuntu:trusty

RUN apt-get update
RUN apt-get install -y software-properties-common

RUN apt-add-repository ppa:ansible/ansible

RUN apt-get update
RUN apt-get install -y git curl ansible

ADD . /ansible

WORKDIR /ansible

RUN ansible-playbook /ansible/install.yml -i /ansible/hosts --connection=local --verbose

CMD ["/bin/bash"]
