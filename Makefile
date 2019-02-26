.PHONY: default
default: init

.PHONY: init
init:
	docker network create -d bridge -o parent=ens160 mgmt
	docker network create -d bridge -o parent=ens161 noc-private
	docker network create -d bridge -o parent=ens192 camp-guest-nofw
	docker network create -d bridge -o parent=ens224 camp-guest-isp
	docker network create -d bridge -o parent=ens256 camp-guest

