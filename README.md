# docker-proxy
Transparent proxy for docker containers.

## Usage
```
docker run --net host --name proxy -v $HOME/.docker-proxy:/var/spool/squid3 -d proxy
sudo iptables -w -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to 3129
```
On Mac OS X commands should be executed with ```docker-machine ssh```.
