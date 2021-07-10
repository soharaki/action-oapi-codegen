# Github Actions to generate the golang codes from OAPI specs

[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

This action uses the oapi-codegen to generate the golang codes from OpenAPI specs.

[oapi-codegen](https://github.com/deepmap/oapi-codegen)

## Inputs

|Input|Required|Default|Description|
|---|---|---|---|
|oapi|Yes|openapi-spec.yaml|OpenAPI specfile|
|boilerplates|No|server,types,spec|Boilerplates types|
|package|No|main|Package name|
|export|No|true|Enable exporting to file|
|export_filename|No|server.gen.go|Export file name|

## Example Usage

```yaml
uses: soharaki/oapi-codegen@v1.0.0
with:
    oapi: "openapi-spec.yaml"
    boilerplates: "server,types,spec"
    package: "api"
    export: true
    export_filename: "server.gen.go"
```

I am deeply grateful to @deepmap.
