# docker-repcached
repcached for docker

## usage
### master
```
docker run -p 11221:11211 --name master -itd jun16/repcached memcached
```

### slave
```
docker run -itd -p 11222:11211 --name slave --link master:master jun16/repcached memcached -x master
```
