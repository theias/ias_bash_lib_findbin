#!/bin/bash

# NOTE: This (will) run against the version of FindBin in src/lib/bash4
# Currently experimenting with the best way to include bash libraries.

. /opt/IAS/lib/bash4/IAS-FindBin/FindBin.sh
export PATH="${BASH_FINDBIN_REALBIN}:${PATH}"
. HelloLibrary.sh

/bin/date
IAS_FindBin_SayHello

