/// Draw Bar Gauge.
// Get Arguments.
var x1 = argument0;
var y1 = argument1;
var backCol = argument2;
var minCol = argument3;
var maxCol = argument4;
var dir = argument5;
var showBack = argument6;
var showBorder = argument7;
var value = argument8;
// Get Bar Coordinates.
var x2 = floor(x1+room_width*0.2);
var y3 = y1-room_height*0.015;
var y2 = y3-room_height*0.01;
y1 = y2-room_height*0.01;
// Draw Bar.
draw_healthbar(x1,y2,x2,y3,value,backCol,minCol,maxCol,dir,showBack,showBorder);
// Get Tic Marks Coordinates.
y1 += room_height*0.01;
y2 = y1 + room_height*0.005;
y3 = y1 + room_height*0.01;
// Draw Base Line.
draw_line(x1,y3,x2,y3);
// Draw End Tics.
for (var x3=x1; x3<x2; x3+=x2-x1) {
    // Draw End Tic.
    draw_line(x3,y1,x3,y3);
}
// Draw Quarter Tics.
for (var x3=x1+(x2-x1)/4; x3<=x2; x3+=(x2-x1)/4) {
    // Draw Quarter Tic.
    draw_line(x3,y2,x3,y3)
}

