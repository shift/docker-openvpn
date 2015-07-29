all: build push

build:
	docker build -t ${DOCKER_USER}/openvpn:2.3.2 .

push: build
	docker push ${DOCKER_USER}/openvpn:2.3.2

test: build
	docker run -i ${DOCKER_USER}/openvpn:2.3.2 openvpn --version
