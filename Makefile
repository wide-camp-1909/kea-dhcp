.PHONY: default
default: init run log

.PHONY: init
init:
	docker network create -d bridge -o parent=ens160 mgmt
	docker network create -d bridge -o parent=ens161 noc-private
	docker network create -d bridge -o parent=ens192 camp-guest-nofw
	docker network create -d bridge -o parent=ens224 camp-guest-isp
	docker network create -d bridge -o parent=ens256 camp-guest

.PHONY: run
run:
	docker-compose up --build -d

.PHONY: log
log:
	docker-compose logs -f

.PHONY: clean
clean:
	docker-compose kill
	docker-compose rm -f
