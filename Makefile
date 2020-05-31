NAME := TrenchStake

ALL := \
	${NAME}.stl \
	${NAME}.png \

.PHONY: all clean

all: ${ALL}

${ALL}: ${NAME}.scad
	openscad -o $@ $<

clean:
	rm -f ${ALL}
