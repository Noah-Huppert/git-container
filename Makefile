.PHONY: build

TAG=noahhuppert/git-container:latest

# build container
build:
	if [ ! -f ssh_private_key ]; then echo "ssh_private_key file must be in directory" >&2; exit 1; fi
	docker build -t "${TAG}" .
