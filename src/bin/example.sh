#!/bin/bash

# NOTE: This runs against the INSTALLED version of FindBin...

. /opt/IAS/lib/bash4/IAS-FindBin/FindBin.sh

. "$BASH_FINDBIN_REALBIN"/HelloLibrary.sh

/bin/date >> /tmp/findbin_example.txt
IAS_FindBin_SayHello >> /tmp/findbin_example.txt

