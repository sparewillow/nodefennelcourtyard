#!/usr/bin/env bash
set -e
REPO="sparewillow/nodefennelcourtyard"
LIB="calm-pouch.a"
URL="https://github.com/${REPO}/releases/download/clever-garden-golden-forest/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
