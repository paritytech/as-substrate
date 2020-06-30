#!/bin/bash

set -e

PROJNAME=flipper

wasm2wat build/$PROJNAME-raw.wasm -o build/$PROJNAME-raw.wat 

wasm-prune --exports call,deploy build/$PROJNAME-raw.wasm build/$PROJNAME.wasm

wasm2wat build/$PROJNAME.wasm -o build/$PROJNAME.wat 