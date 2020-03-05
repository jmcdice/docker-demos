Run a starwars text movie server on PCF

```console
  $ cf push cf-starwars --docker-image jmcdice/cf-starwars -d tcp.apps.pcfone.io --random-route
```

Retrieve connection details (hostname/port) and connect to your server:

```console
  $ cf apps | grep starwars
    cf-starwars     started           1/1         1G       1G     tcp.apps.pcfone.io:10017

  $ nc tcp.apps.pcfone.io 10017
```

Run on k8s
```console
  $ kubectl run --generator=run-pod/v1 --image=jmcdice/cf-starwars starwars
  $ kubectl expose pod starwars --type=NodePort --name=starwars-np --port=80 --target-port=8080

  # Example FW rule for GCP
  gcloud compute --project=<project_id> firewall-rules create starwars \
    --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=tcp:<NodePort>

```

Run locally using docker
```console
  $ docker run -itd --name starwars -p 801:8080 jmcdice/cf-starwars
  $ nc localhost 801
```

![Example](./example.gif)

