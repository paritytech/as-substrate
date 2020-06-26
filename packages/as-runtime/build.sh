#!/bin/bash

set -e

PROJECT_NAME=as-runtime

wat2wasm build/$PROJECT_NAME.wat -o build/$PROJECT_NAME.wasm 