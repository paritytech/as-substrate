#!/bin/bash

set -e

PROJECT_NAME=as-contracts

wat2wasm build/$PROJECT_NAME.wat -o build/$PROJECT_NAME.wasm 