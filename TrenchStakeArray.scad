use <TrenchStake.scad>

DEFAULT_NUM = 75;
DEFAULT_SPACING = 2;

module TrenchStakeArray(num = DEFAULT_NUM, spacing = DEFAULT_SPACING)
{
    translate([0, 1, 1])
    for (y = [0 : num])
    {
        translate([0, y * spacing, 0])
        TrenchStake();
    }

    // Tooling strip - Holds the bits together while printing
    translate([-0.5, 0, 0])
    cube([1, (num + 1) * spacing, 1]);
}

TrenchStakeArray();
