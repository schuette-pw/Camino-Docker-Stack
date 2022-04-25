#!/bin/bash
# (c) 2021, Ava Labs, Inc. All rights reserved.
# See the file LICENSE for licensing terms.

node1=$(getent hosts node-1 | awk '{ print $1 }')
./caminogo --http-host=${node1} --public-ip=${node1} --network-id=local --index-enabled=true --staking-enabled=true --http-port=9650 --staking-port=9651 --staking-tls-cert-file=/files/certs/keys1/staker.crt --staking-tls-key-file=/files/certs/keys1/staker.key --log-level=info
