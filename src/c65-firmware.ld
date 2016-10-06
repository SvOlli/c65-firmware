# Linker config file for C65 firmware ROM

MEMORY {
# bank 2
   DOS:        start=$8000,size=$4000,type=ro,fill=yes,fillval=$ff,file=%O;
   RESERVED2:  start=$4000,size=$4000,type=ro,fill=yes,fillval=$ff,file=%O;
   C65CHARSET: start=$8000,size=$2000,type=ro,fill=yes,fillval=$ff,file=%O;
   C64BASIC:   start=$A000,size=$2000,type=ro,fill=yes,fillval=$ff,file=%O;
   INTERFACE:  start=$C000,size=$1000,type=ro,fill=yes,fillval=$ff,file=%O;
   C64CHARSET: start=$D000,size=$1000,type=ro,fill=yes,fillval=$ff,file=%O;
   C64KERNAL:  start=$E000,size=$2000,type=ro,fill=yes,fillval=$ff,file=%O;
# bank 3
   MONITOR:    start=$6000,size=$2000,type=ro,fill=yes,fillval=$ff,file=%O;
   C65BASIC:   start=$2000,size=$6000,type=ro,fill=yes,fillval=$ff,file=%O;
   GRAPHICS:   start=$8000,size=$4000,type=ro,fill=yes,fillval=$ff,file=%O;
   RESERVED3:  start=$C000,size=$2000,type=ro,fill=yes,fillval=$ff,file=%O;
   C65KERNAL:  start=$E000,size=$2000,type=ro,fill=yes,fillval=$ff,file=%O;
}

SEGMENTS {
   DOS:        load=DOS,        type=ro;
   RESERVED2:  load=RESERVED2,  type=ro;
   C65CHARSET: load=C65CHARSET, type=ro;
   C64BASIC:   load=C64BASIC,   type=ro;
   INTERFACE:  load=INTERFACE,  type=ro;
   C64CHARSET: load=C64CHARSET, type=ro;
   C64KERNAL:  load=C64KERNAL,  type=ro;

   MONITOR:    load=MONITOR,    type=ro;
   C65BASIC:   load=C65BASIC,   type=ro;
   GRAPHICS:   load=GRAPHICS,   type=ro;
   RESERVED3:  load=RESERVED3,  type=ro;
   C65KERNAL:  load=C65KERNAL,  type=ro;
}

