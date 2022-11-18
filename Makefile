.PHONY: build push run

version="v1.0.0"
name=kutrzeba/json-schema-bundler:$(version)
remote_name=$(name)

build:
	docker build -t $(name) .
# docker tag $(name) $(remote_name)

push:
	docker push $(remote_name)

run:
	docker run \
		-v "$(PWD)/../example/schemas/background_queue/notification:/schemas" \
		$(remote_name) \
		--schema=./schemas/payload.yaml
