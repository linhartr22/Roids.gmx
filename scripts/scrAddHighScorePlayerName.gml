/// Add High Score and Player Name.
// Save High Score and Player Name Array.
var astrPlayerName;
var aintScore;
for (var i=0; i<10; i++) {
    // Save Player Name.
    astrPlayerName[i] = highscore_name(i+1);
    // Player Name = ????
    if (astrPlayerName[i] == "___") {
        // Replace with Player Name.
        astrPlayerName[i] = strPlayerName;
    }
    // Save High Score.
    aintScore[i] = highscore_value(i+1);
}
// Clear High Score Array.
highscore_clear();
// Restore High Score Array.
for (var i=0; i<10; i++) {
    highscore_add(astrPlayerName[i],aintScore[i]);
}

