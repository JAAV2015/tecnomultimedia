size(500, 500);
background(255);
//Cabeza
stroke(#E5AC6F);
fill(#E5AC6F);
triangle(130, 75, 210, 105, 160, 140);
triangle(370, 75, 290, 105, 340, 140);
line(210, 105, 290, 105);
line(160, 140, 160, 185);
line(340, 140, 340, 185);
line(160, 185, 210, 210);
line(340, 185, 290, 210);
line(210, 210, 290, 210);
//Collar
rect(210, 210, 80, 10);
circle(250, 230, 20);
//Cuerpo
line(225, 210, 160, 250);
line(275, 210, 340, 250);
line(160, 250, 145, 300);
line(340, 250, 355, 300);
line(145, 300, 145, 350);
line(355, 300, 355, 350);
line(145, 350, 160, 400);
line(355, 350, 340, 400);
line(160, 400, 225, 420);
line(340, 400, 275, 420);
line(225, 420, 275, 420);
quad(355, 350, 340, 400, 400, 315, 380, 300);
quad(380, 300, 400, 315, 450, 300, 400, 265);
//Cara Nariz-Boca
triangle(266, 170, 234, 170, 250, 190);
line(250, 190, 235, 200);
line(250, 190, 265, 200);
line(235, 200, 220, 200);
line(265, 200, 280, 200);
line(220, 200, 210, 190);
line(280, 200, 290, 190);
//Bigotes
line(225, 195, 150, 220);
line(235, 195, 160, 220);
line(220, 195, 150, 215);
line(275, 195, 345, 224);
line(270, 195, 340, 227);
line(275, 192, 350, 220);
//Cara Ojo Izquierdo
line(200, 130, 230, 130);
line(200, 130, 190, 140);
line(230, 130, 240, 140);
line(190, 140, 200, 150);
line(240, 140, 230, 150);
line(200, 150, 230, 150);
fill(255);
circle(215, 140, 20);
fill(#E5AC6F);
circle(215, 140, 10);
//Cara Ojo Derecho
line(300, 130, 270, 130);
line(300, 130, 310, 140);
line(270, 130, 260, 140);
line(310, 140, 300, 150);
line(260, 140, 270, 150);
line(300, 150, 270, 150);
fill(255);
circle(285, 140, 20);
fill(#E5AC6F);
circle(285, 140, 10);
