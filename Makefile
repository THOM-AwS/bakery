
init: .env
	docker-compose run --rm --priveliged -v packer-utils sh -c 'cd $${SUBFOLDER}; init ubuntu-pi.json'
.PHONY: init

build: .env init
	docker-compose run --rm --priveliged -v packer-utils sh -c 'cd $${SUBFOLDER}; build ubuntu-pi.json'
	docker-compose run --rm --priveliged -v packer-utils sh -c 'rm -rf $${SUBFOLDER}/.packer/modules'
.PHONY: build

.env:
	touch .env
	docker-compose run --rm envvars validate
	docker-compose run --rm envvars envfile --overwrite
.PHONY: .env