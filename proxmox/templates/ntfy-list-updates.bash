#!/bin/bash

OUTFILE="$(mktemp /tmp/update-list-XXXX.tmp)"
ENDPOINT="https://ntfy.robpellegrin.duckdns.org"

apt list --upgradeable | awk '{print $1}' >> $OUTFILE

OUTPUT=$(cat $OUTFILE | sed -n '2,$p')
HEADER="$(hostname): updates"
DATA=$(printf "%s\n    %s" "$HEADER" "$OUTPUT")

if [ $(wc -l $OUTFILE | awk '{print $1}')  -eq 1 ]; then
  curl -d "$(hostname) has no updates avaliable" "$ENDPOINT/debug"
else
  curl -d "$DATA" "$ENDPOINT/Proxmox"
fi