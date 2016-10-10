/// Set Next Character at Player Name Character Position.
// Character Position = SAVE?
if (intCharPos != array_length_1d(astrCharPosInd)-1) {
    // No, Get Current Character.
    var i = string_byte_at(strPlayerName,intCharPos+1);
    // Get Next Character.
    i = min(i+1,intCharASCIIMax);
    // Replace Current Character with Next Character.
    strPlayerName = string_set_byte_at(strPlayerName,intCharPos+1,i);
}
