build: Dockerfile
	docker build -t docker.pkg.github.com/kmdkuk/dev-image .
clean-build: Dockerfile
	docker build --no-cache=true -t docker.pkg.github.com/kmdkuk/dev-image .
run:
	docker run --rm -it -e "TERM=xterm-256color" docker.pkg.github.com/kmdkuk/dev-image

.PHONY: run
