#!/bin/bash

set -e

PROJECT_NAME=contract

cat build/$PROJECT_NAME.wat | sed "s/(import \"env\" \"memory\" (memory \$0 1))/(import \"env\" \"memory\" (memory \$0 2 16))/" > build/$PROJECT_NAME-fixed.wat

wat2wasm -o build/$PROJECT_NAME-fixed.wasm build/$PROJECT_NAME-fixed.wat