#!/usr/bin/env bash
set -eu

kubectl delete --cascade -f iperf-all.yaml
rm -rf images k8sperf kubernetes-manifests provision
rm -rf *.yaml
rm -rf README.md
rm -rf run-iperf.sh
