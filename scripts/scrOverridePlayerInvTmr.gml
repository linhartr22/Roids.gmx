/// Override Player Invulnerable Timer.
// Player Invulnerable Timer Active?
if (alarm_get(0) > 0) {
    // Yes, Stop Player Invulnerable Timer
    alarm_set(0,-1);
    // Perform Player Invulnerable Timer Event.
    event_perform(ev_alarm,0);
}
