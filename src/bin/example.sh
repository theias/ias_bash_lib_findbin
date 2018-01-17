#!/bin/bash

. /opt/IAS/lib/bash4/IAS-FindBin/FindBin.sh

. "$BASH_FINDBIN_REALBIN"/HelloLibrary.sh

date >> /tmp/findbin_example.txt
IAS_FindBin_SayHello >> /tmp/findbin_example.txt

