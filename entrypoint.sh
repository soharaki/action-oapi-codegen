#!/bin/sh
set -e

oapi-codegen -generate $INPUT_GENERATE_TYPES -package $INPUT_PACKAGE_NAME $INPUT_FILENAME