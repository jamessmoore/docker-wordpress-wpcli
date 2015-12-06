.PHONY: build run kill rm

all: help

help:
        @echo ""
        @echo "-- Help Menu"
        @echo ""  This is merely a base image for usage read the README file
        @echo ""   1. make run       - build and run docker container

build: 
	/usr/bin/time -v docker build -t wordpress/wp-cli

run: build rundocker

rundocker:
	@docker run --name=docker-wordpress-wpcli \
	--cidfile="cid" \
        -v /tmp:/tmp \
        -v /var/run/docker.sock:/run/docker.sock \
        -v $(shell which docker):/bin/docker \
        -t wordpress/wp-cli

kill:
	@docker kill `cat cid`

rm: kill rm-image

rm-image:	
	@docker rm `cat cid`
	@rm cid
