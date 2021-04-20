# kubectl-via-eksctl

Github action to invoke kubectl with a kubeconfig from eksctl.

Sample usage:

```
- name: Trigger app deployment
  uses: statsig-io/kubectl-via-eksctl@main
  env:
    aws_access_key_id: ${{ secrets.AWS_ACCESS_KEY_ID }}
    aws_secret_access_key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    region: us-west-2
    cluster: ${{ secrets.CLUSTER_NAME }}
  with:
    args: rollout restart deployment/willanyoneeverreadthis
```

**⚠️NOTE⚠️**

The aws credentials passed in need AuthZ to connect to export a kubeconfig and perform the requested actions in the cluster. To set that up, check [How do I provide access to other IAM users and roles after cluster creation in Amazon EKS?](https://aws.amazon.com/pt/premiumsupport/knowledge-center/amazon-eks-cluster-access/)

