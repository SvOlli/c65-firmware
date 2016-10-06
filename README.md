
C65 Firmware Build Kit
======================

This is a repository intended for developing the kernal of a C65/MEGA65 system.

By running ```make``` you'll get a combination of files that will allow to
develop the kernal on a step by step basis. Right now, you'll get a directory
called "bin" that will contain all the firmware of the C65 slided up into a
file for each ROM block of each version of the file.

As a first step, you can try to mix these slices into one optimum ROM, just by
replacing the dates coded in the filenames of the binary chunks included by the
files in the "src" directory. These files can be used later on reference real
source code of reversed engineered and improved firmware.

The built ROM can be found at obj/mega65.rom

