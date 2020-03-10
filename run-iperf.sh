#!/usr/bin/env bash
for i in *.TDG.kubeconfig; do mv $i `echo $i | tr [:upper:] [:lower:]`; done
export KUBECONFIG=$HOSTNAME.tdg.kubeconfig
set -eu

cd $(dirname $0)

provision/setup.sh
provision/run.sh $@
provision/cleanup.sh
