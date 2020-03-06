#!/usr/bin/env bash
export KUBECONFIG=$HOSTNAME.TDG.kubeconfig
set -eu

cd $(dirname $0)

provision/setup.sh
provision/run.sh $@
provision/cleanup.sh
