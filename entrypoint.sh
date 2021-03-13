#!/bin/sh

set -e

export AWS_ACCESS_KEY_ID="$aws_access_key_id"
export AWS_SECRET_ACCESS_KEY="$aws_secret_access_key"

eksctl --version

echo "Writing kubeconfig"
eksctl utils write-kubeconfig --region "$region" --cluster "$cluster"

echo "Issuing kubectl command"
kubectl "$@"
