#!/usr/bin/env bash

set -euo pipefail

cd -- "$(dirname -- "${BASH_SOURCE[0]}")"

. ./constants.sh install

cp dfx.json.orig dfx.json

rm -rf .dfx \
    sns_init.yaml \
    *.wasm *.wasm.gz \
    nns-dapp/.dfx/* \
    nns-dapp/canister_ids.json \
    nns-dapp/*.wasm \
    nns-dapp/*.wasm.gz \
    internet-identity/.dfx \
    internet-identity/internet_identity_dev.wasm \
    msg.json \
    sns_canister_ids.json \
    upload_*.txt \
    sns-wasm-list_deployed_snses-response.json #\
    # FIXME[nns-dapp]: Uncomment when a release proposal is made for https://github.com/dfinity/nns-dapp/releases/tag/untagged-37e65efdedb810819a1b 
    # nns-dapp/out

# Remove Wallets
rm -rf ~/.local/share/dfx/network/${NETWORK}/wallets.json
rm -rf ~/Library/Application\ Support/org.dfinity.dfx/network/${NETWORK}/wallets.json

# Remove any generated quill messages
rm -rf msg_*.json

