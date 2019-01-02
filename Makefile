.SECONDARY:

SCADS  := $(wildcard *.scad)
STLS   := $(wildcard *.stl) $(SCADS:.scad=.stl)

.PHONY: gen
gen: gen.py templates/cube.scad
	python gen.py

.PHONY: all
all: $(STLS)

$(STLS) $(SCADS): Makefile

%.stl: %.scad
	openscad -o "$@" "$<"

.PHONY: clean
clean:
	rm -fv $(STLS) $(SCADS)
