```
$ docker build -t 'user/ubuntu:16.04' .
$ docker run -d --name myubuntu user/ubuntu:16.04
$ docker ps -a
$ docker  inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' myubuntu
$ curl http://<myubuntu ipaddress>:4567
```
