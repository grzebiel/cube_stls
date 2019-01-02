SCADS := $(wildcard $.scad)
STLS := $(wildcard $.stl) $(SCADS:.scad=.stl)

.PHONY: all
all: $(STLS)

%.stl: %.scad
	openscad -o "$@" "$<"

.PHONY: clean
clean:
	rm -fv $(SCADS:.scad=.stl)
