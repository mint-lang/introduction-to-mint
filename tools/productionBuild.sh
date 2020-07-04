#!/usr/bin/env bash

curl -L https://mint-lang.s3-eu-west-1.amazonaws.com/mint-latest-linux --output mint
chmod +x mint
./mint build
