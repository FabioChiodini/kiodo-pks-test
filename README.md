# kiodo-pks-test
PKS Tests and demo kit



## Networking

To demo networking

```
kubectl create namespace kiodo
```

Then activate security policies:

```
kubectl apply -f kiodo-pks-test/apps/nsx-pod-policy.yaml
```

and deploy a workload that uses them:

```
kubectl apply -f kiodo-pks-test/apps/nginx-sec.yml
```

To see the deployment

```
kubectl get deployments --namespace=kiodo
```

To check the network policies

```
kubectl get networkpolicies --namespace=kiodo
```

## Network policies in NSX-T

![Alt text](/images/NSXAllow.png "NSXAllow")

![Alt text](/images/NSXDeny.png "NSXDeny")



## Logging

Deploy a pod with a non-existing image:

```
kubectl apply -f kiodo-pks-test/apps/wrong-image.yml
```

Search for nginx-* in vRLI

![Alt text](/images/vRLI.png "vRLI")
