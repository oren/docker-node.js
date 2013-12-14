# Docker and Node.js

## build image

	docker build -t oren/hello-node .

## Run the container

	docker run -p 3000:3000 -d -name test -v `pwd`:/root oren/hello-node

## Cheat Sheet

	curl get.docker.io | bash
	echo net.ipv4.ip_forward=1 | sudo tee /etc/sysctl.d/99-docker.conf
	sudo sysctl --system

	create image from a Dockerfile
	docker build -t oren/hello-node .

	similar to sshing into a container
	docker run -i -t <image name> /bin/bash

	docker ps - list running containers
	docker ps -a  - list all containers, even those that are not running
	docker images - list of images
	docker commit - create an image
	docker run - takes an image and create a container
	docker run oren/hello-node (all ports are blocked)
	docker run -p 3000:3000 oren/hello-node
	docker run -p 3000:3000 -d oren/hello-node  - daemonize
	docker run -p 3000:3000 -d -name test oren/hello-node  - name
	docker run -p 3000:3000 -d -name test -v `pwd`:/root oren/hello-node - map directories (for development)

	docker stop oren/hello-node
	docker stop test
	docker stop container id
	stopping a container does not not delete it. docker rm will do that.
	docker rm test

	# setup private docker registry
	# https://github.com/dotcloud/docker-registry
	docker run -p 5000 stackbrew/registry

## Notes

* if you don't map folders(between your dev machine and the container) you have to rebuild the image on every code change
* Image is 'frozen' - it's read-only
* Container is read/write
