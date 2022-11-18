# Json Schema Bundler

It is dockerized tool for dereferencing schemas.

https://github.com/APIDevTools/json-schema-ref-parser

It takes multiple files and create one bundled json schema file.

Works with:
    - json schema
    - openapi 

# Usage

## Changes in version

1. Change version in Makefile
2. `make build`
3. `make push`

## Bundling schemas

```
docker run \
    -v "$(PWD)/../example:/schemas" \
    kutrzeba/json-schema-bundler:v1.0.0 \
    --schema=./schemas/payload.yaml
```