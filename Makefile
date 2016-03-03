version = 1.1.1

build:
	docker build -t docker.clarin.eu/nginx:${version} .

push:
	@docker push docker.clarin.eu/nginx:${version}

all: build
