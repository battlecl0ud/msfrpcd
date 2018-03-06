#!/bin/bash
set -e
msfdb init
msfupdate
cd /usr/share/armitage
./teamserver $RHOST $RPASS
