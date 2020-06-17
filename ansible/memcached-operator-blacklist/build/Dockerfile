#FROM quay.io/operator-framework/ansible-operator:master
FROM registry-proxy.engineering.redhat.com/rh-osbs/openshift-ose-ansible-operator:v4.5.0-202005231517

COPY watches.yaml ${HOME}/watches.yaml

COPY roles/ ${HOME}/roles/
