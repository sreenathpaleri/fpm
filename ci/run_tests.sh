#!/bin/bash

set -ex

cd fpm
fpm build
fpm run
fpm run --args build
./fpm
cd ../test/example_packages/hello_world
../../../fpm/fpm build
./hello_world
