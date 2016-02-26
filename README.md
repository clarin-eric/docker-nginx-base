Based on https://hub.docker.com/_/nginx/

ports:

* 80, http
* 443, https

volumes:

* `/etc/nginx/ssl/`
* `/var/log/nginx/`
* `/var/cache/nginx`

Available logs are access.log and error.log.

## Building

A Makefile is provided to allow for an easy workflow to build the docker images. Make sure you are in the directory where the Dockerfile is location and then run:

```
make
```


