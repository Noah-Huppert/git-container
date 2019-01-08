.PHONY: build

USER=noahhuppert
NAME=git-container
VERSION=latest
TAG=${USER}/${NAME}:${VERSION}

# build container
build:
	./scripts/build-check
	docker build \
		-t "${TAG}"\
		--build-arg SSH_NAME="${SSH_NAME}" \
		--build-arg SSH_EMAIL="${SSH_EMAIL}" \
		--build-arg SSH_PASSWORD="${SSH_PASSWORD}" \
		.
