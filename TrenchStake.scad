
DEFAULT_LENGTH = 16;
DEFAULT_WIDTH = 2;
DEFAULT_LOOP_RADIUS = 1.5;
DEFAULT_COLOUR = "grey";

module TrenchStake(
    length = DEFAULT_LENGTH,
    width = DEFAULT_WIDTH,
    loopRadius = DEFAULT_LOOP_RADIUS,
    colour = DEFAULT_COLOUR)
{
    w = width * 2 / PI;
    l = loopRadius * 2 / PI;

    color(colour)
    difference()
    {
        hull()
        {
            translate([width / -2, 0, length - width / 2])
            rotate([90, 0, 0])
            translate([0, 0, w / -2])
            cylinder($fn = 60, h = w, r = l);

            cylinder($fn = 3, h = length, r1 = width / 4, r2 = width / 2);
        }

        translate([width / -2, 0, length - width / 2 + 1])
        rotate([90, 0, 0])
        translate([0, -w, w * -2])
        cylinder($fn = 60, h = w * 4, r = l / 2);
    }
}

TrenchStake();
