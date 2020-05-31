ALL := \
	TrenchStake.stl \
	TrenchStake.png \
	TrenchStakeArray.stl \
	TrenchStakeArray.png \

.PHONY: all clean

all: ${ALL}

TrenchStake.stl TrenchStake.png: TrenchStake.scad
	openscad -o $@ $<

TrenchStakeArray.stl TrenchStakeArray.png: TrenchStakeArray.scad
	openscad -o $@ $<

clean:
	rm -f ${ALL}
