/// Spawn Roids.
// Number of Asteroids <= 1?
if (instance_number(objRoid) <= 1) {
    // Yes, Spawn Roids.
    repeat (global.intGameLevel+global.intRoidSpawnMin) {
        instance_create(random(room_width),random(room_height),objRoidBig);
    }
    // Inc Game Level
    global.intGameLevel += 1;
    // Stop DeetDoot Sound.
    with(objDeetDoot) {
        instance_destroy();
    }
    // Start DeetDoot Sound.
    instance_create(x,y,objDeetDoot);
}
