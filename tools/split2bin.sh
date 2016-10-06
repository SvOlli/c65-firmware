#!/bin/bash

versions="910111 910429 910523 910626 910828 911001"
dl_dir="../dl"
dest_dir="../bin"

cd "$(dirname ${0})"

mkdir -p "${dest_dir}"

split()
{
  echo "creating ${2}.${1}"

  dd if="../dl/${1}.bin" bs=4k of="${dest_dir}/${2}.${1}.bin" skip="${3}" count="${4}"
}

for v in ${versions}; do

   #    version  rom area name     start      size (in $1000 chunks)

   split "${v}" "20-23_dos"        $((16#00)) 4
   split "${v}" "24-27_reserved"   $((16#04)) 4
   split "${v}" "28-29_c65charset" $((16#08)) 2
   split "${v}" "2a-2b_c64basic"   $((16#0a)) 2
   split "${v}" "2c-2c_interface"  $((16#0c)) 1
   split "${v}" "2d-2d_c64charset" $((16#0d)) 1
   split "${v}" "2e-2f_c64kernal"  $((16#0e)) 2

   split "${v}" "30-31_monitor"    $((16#10)) 2
   split "${v}" "32-37_c65basic"   $((16#12)) 6
   split "${v}" "38-3b_graphics"   $((16#18)) 4
   split "${v}" "3c-3d_reserved"   $((16#1c)) 2
   split "${v}" "3e-3f_c65kernal"  $((16#1e)) 2

done

