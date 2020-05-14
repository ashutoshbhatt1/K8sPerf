#!/usr/bin/env bash
for i in $HOSTNAME.*.kubeconfig; do mv $i `echo $i | tr [:upper:] [:lower:]`; done
export KUBECONFIG=$(echo $i)
set -eu

cd $(dirname $0)

provision/setup.sh
provision/run.sh $@
provision/cleanup.sh
