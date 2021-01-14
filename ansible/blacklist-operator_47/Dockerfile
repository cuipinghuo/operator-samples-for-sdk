#FROM quay.io/operator-framework/ansible-operator:v1.3.0
FROM registry-proxy.engineering.redhat.com/rh-osbs/openshift-ose-ansible-operator:v4.7.0-202101030323.p0

COPY requirements.yml ${HOME}/requirements.yml
RUN ansible-galaxy collection install -r ${HOME}/requirements.yml \
 && chmod -R ug+rwx ${HOME}/.ansible

COPY watches.yaml ${HOME}/watches.yaml
COPY roles/ ${HOME}/roles/
COPY playbooks/ ${HOME}/playbooks/
