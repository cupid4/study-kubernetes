kubectl apply -f deploy-test01.yml
kubectl apply -f ./service-test01.yml 
kubectl get all
kubectl apply -f ./nginx-test01.yml
kubectl get all
    NAME                                 READY   STATUS    RESTARTS   AGE
    pod/deploy-test01-7d8cdc59cd-btlbg   1/1     Running   0          19m
    pod/deploy-test01-7d8cdc59cd-g8m5r   1/1     Running   0          19m
    pod/deploy-test01-7d8cdc59cd-q4x44   1/1     Running   0          19m
    pod/nginx01                          1/1     Running   0          6s

    NAME                  TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)   AGE
    service/kubernetes    ClusterIP   10.43.0.1      <none>        443/TCP   24h
    service/web-service   ClusterIP   10.43.166.85   <none>        80/TCP    19m

    NAME                            READY   UP-TO-DATE   AVAILABLE   AGE
    deployment.apps/deploy-test01   3/3     3            3           19m

    NAME                                       DESIRED   CURRENT   READY   AGE
    replicaset.apps/deploy-test01-7d8cdc59cd   3         3         3       19m

kubectl exec -it nginx01 -- /bin/bash
root@nginx01:/# curl "10.43.166.85:80"


