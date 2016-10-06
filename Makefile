AS ?= ca65
LD ?= ld65

ASFLAGS = -I . -I src

ROM = obj/mega65.rom

SOURCES= \
	src/c64basic.s \
	src/c64kernal.s \
	src/c65basic.s \
	src/c65kernal.s \
	src/charset.s \
	src/dos.s \
	src/graphics.s \
	src/interface.s \
	src/monitor.s \
	src/reserved.s \

OBJECTS=$(addprefix obj/,$(notdir $(SOURCES:.s=.o)))

all: $(ROM)

$(ROM): $(OBJECTS)
	$(LD) -o $@ -C src/c65-firmware.ld $^

clean:
	rm -f $(OBJECTS)

distclean: clean
	rm -fr obj bin

obj:
	mkdir -p $@

obj/%.o: src/%.s obj bin
	$(AS) $(ASFLAGS) $< -o $@
	
dl:
	tools/getfirmware.sh

bin: dl
	tools/split2bin.sh

