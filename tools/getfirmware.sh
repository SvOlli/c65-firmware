#!/bin/sh

versions="910111 910429 910523 910626 910828 911001"
dl_dir="../dl"

cd "$(dirname ${0})"

mkdir -p "${dl_dir}"

for v in ${versions};do
   [ -f "${dl_dir}/${v}.bin" ] && continue
   wget -O "${dl_dir}/${v}.bin" "ftp://ftp.zimmers.net/pub/cbm/c65/firmware/${v}.bin"
done
