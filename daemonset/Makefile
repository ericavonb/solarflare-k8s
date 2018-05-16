all: 
	cp -r /etc/yum.repos.d/ .
	cp /var/lib/yum/*.pem .
	docker build -t sfc-daemonset .
	docker tag sfc-daemonset quay.io/zvonkok/sfc-daemonset

push:
	docker push quay.io/zvonkok/sfc-daemonset 
