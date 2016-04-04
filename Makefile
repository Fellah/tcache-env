PWD = $(shell pwd)/$(shell dirname $(MAKEFILE_LIST))
SSH_HOST = tcache

setup:
	ssh $(SSH_HOST) 'mkdir -p ~/.config/tcache ~/.config/systemd/user'
	scp -r $(PWD)/tcache.env $(SSH_HOST):~/.config/tcache/tcache.env
	scp -r $(PWD)/tcache.service $(SSH_HOST):~/.config/systemd/user/tcache.service
	ssh $(SSH_HOST) 'systemctl --user daemon-reload'
	ssh $(SSH_HOST) 'systemctl --user enable tcache.service'

deploy:
	ssh $(SSH_HOST) 'docker pull fellah/tcache'
	ssh $(SSH_HOST) 'systemctl --user restart tcache.service'

.DEFAULT_GOAL := deploy

.PHONY: setup