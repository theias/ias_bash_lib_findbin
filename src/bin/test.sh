#!/bin/bash

# NOTE: This runs against the version of FindBin in src/lib/bash4
# 
# You will not get the EXPECTED symbolic linking behavior out of this.
# Please test with example.sh when installed.

SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -L )"
. $SCRIPT_PATH/../lib/bash4/IAS-FindBin/FindBin.sh

export PATH="${BASH_FINDBIN_REALBIN}:${PATH}"
. HelloLibrary.sh

output_file=/tmp/findbin_src_test.txt

/bin/date >> "${output_file}"
IAS_FindBin_SayHello >> "${output_file}"
bash_findbin_debug >> "${output_file}"
