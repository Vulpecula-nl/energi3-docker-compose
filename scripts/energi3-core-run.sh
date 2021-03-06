#!/bin/sh
# A script to be used as a Docker container entrypoint to run
# Energi Gen 3 Core node and unlock account for staking.
# https://docs.energi.software/en/advanced/core-node-vps#h-2212-mainnet (
# section "2.2.1.2 Mainnet")
energi3\
 --masternode\
 --maxpeers 128\
 --mine\
 --nat extip:`wget -qO- https://api.ipify.org`\
 --password /run/secrets/account_password\
 --unlock `cat /run/secrets/account_address`\
 --unlock.staking\
 --verbosity 3
