#!/usr/bin/env bash

curl -L https://github.com/mint-lang/mint/releases/download/0.9.0/mint-0.9.0-linux --output mint
chmod +x mint
./mint build
