#!/bin/bash -x


# This script can be used for manual testing with a kind cluster
# Run kind create cluster before this script

#VERSION=${1:-v1.0}

export WEBHOOK_IMAGE=quay.io/jfan/webhook-operator:v1.0.0 \
       OPERATOR_IMAGE=quay.io/jfan/validat-operator:v1.0.0 \
       OPERATOR_PULL_POLICY=Never

#docker build -f build/webhooks.Dockerfile -t docker.io/fabianvf/webhooks:${VERSION} . 
#docker build -f build/Dockerfile -t docker.io/fabianvf/validating-operator:${VERSION} . 
kind load docker-image quay.io/jfan/webhook-operator:v1.0.0
kind load docker-image quay.io/jfan/validat-operator:v1.0.0

molecule ${2:-test} -s cluster
