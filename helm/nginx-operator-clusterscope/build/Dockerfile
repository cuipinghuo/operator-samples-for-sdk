#FROM quay.io/operator-framework/helm-operator:v0.17.0
FROM registry-proxy.engineering.redhat.com/rh-osbs/openshift-ose-helm-operator:v4.5.0-202005301517

COPY watches.yaml ${HOME}/watches.yaml
COPY helm-charts/ ${HOME}/helm-charts/
