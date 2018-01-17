#!/bin/bash

# NOTE: This runs against the INSTALLED version of FindBin...

. /opt/IAS/lib/bash4/IAS-FindBin/FindBin.sh

export PATH="${BASH_FINDBIN_REALBIN}:${PATH}"

. HelloLibrary.sh

output_file=/tmp/findbin_example.txt

/bin/date >> "${output_file}"
IAS_FindBin_SayHello >> "${output_file}"
bash_findbin_debug >> "${output_file}"
