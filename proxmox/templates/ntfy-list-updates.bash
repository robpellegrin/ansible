#!/bin/bash

OUTFILE="$(mktemp /tmp/update-list-XXXX.tmp)"
ENDPOINT="192.168.1.50"

echo "$(hostname) has the following updates available: " > $OUTFILE;
apt update >/dev/null;
apt list --upgradeable | awk '{print $1}' >> $OUTFILE;

if [ $(wc -l $OUTFILE | awk '{print $1}' ) -gt 2 ]; then
  curl -d "$(cat $OUTFILE)" "$ENDPOINT/test"
else
  curl -d "$(hostname) -- No Updates" "$ENDPOINT/test";
fi

exit 0