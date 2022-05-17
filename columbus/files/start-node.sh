#!/bin/bash
indexnode=$(getent hosts index-node | awk '{ print $1 }')
./camino-node --api-ipcs-enabled=true --chain-config-dir=/files/chain-config --http-host=${indexnode} --public-ip=${indexnode} --network-id=columbus --index-enabled=true --http-port=9650  --log-level=info
