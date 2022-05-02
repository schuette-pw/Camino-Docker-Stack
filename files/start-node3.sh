#!/bin/bash
set -e
sleep 10
node1=$(getent hosts node-1 | awk '{ print $1 }')
node2=$(getent hosts node-2 | awk '{ print $1 }')
node3=$(getent hosts node-3 | awk '{ print $1 }')
./caminogo --api-ipcs-enabled=true --chain-config-dir=/files/chain-config --http-host=${node3} --public-ip=${node3} --network-id=local --index-enabled=true --staking-enabled=true --http-port=9650 --staking-port=9651  --log-level=trace --bootstrap-ids=NodeID-7Xhw2mDxuDS44j42TCB6U5579esbSt3Lg --bootstrap-ips=${node1}:9651 --staking-tls-cert-file=/files/certs/keys3/staker.crt --staking-tls-key-file=/files/certs/keys3/staker.key
