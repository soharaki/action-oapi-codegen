#!/bin/sh
set -e

if [ $INPUT_EXPORT ]; then
  oapi-codegen -generate $INPUT_BOILERPLATES -package $INPUT_PACKAGE $INPUT_OAPI > $INPUT_EXPORT_FILENAME
else
  oapi-codegen -generate $INPUT_BOILERPLATES -package $INPUT_PACKAGE $INPUT_OAPI
fi
