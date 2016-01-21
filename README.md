based on https://hub.docker.com/_/nginx/

ports:
* 80, http
* 443, https

volumes:
* `/etc/nginx/ssl/`
* `/var/log/nginx/`
* `/var/cache/nginx`

Available logs are access.log and error.log.


