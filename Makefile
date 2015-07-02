build: Dockerfile
	docker build -t mini-base .

tag: build
	docker tag -f mini-base mutterio/mini-base

publish: tag
	docker push mutterio/mini-base
