build: Dockerfile
	docker build -t docker.pkg.github.com/kmdkuk/dev-image/ubuntu .
clean-build: Dockerfile
	docker build --no-cache=true -t docker.pkg.github.com/kmdkuk/dev-image/ubuntu .
run: build
	docker run --rm -it -e "TERM=xterm-256color" docker.pkg.github.com/kmdkuk/dev-image/ubuntu
push: build
	docker push docker.pkg.github.com/kmdkuk/dev-image/ubuntu
