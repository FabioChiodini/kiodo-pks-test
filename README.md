# kiodo-pks-test
PKS Tests and demo kit



## Networking

To demo networking

```
kubectl create namespace kiodo
```

To see the deployment

```
kubectl get deployments --namespace=kiodo
```


```
kubectl get networkpolicies --namespace=kiodo
```

## Network policies

![Alt text](/images/NSXAllow.png "NSXAllow")

![Alt text](/images/NSXDeny.png "NSXDeny")



## Logging

Deploy a pod with a non-existing image:

```
kubectl apply -f kiodo-pks-test/apps/wrong-image.yml
```

Search for nginx-* in vRLI

![Alt text](/images/vRLI.png "vRLI")
