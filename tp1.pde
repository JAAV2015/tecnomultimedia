PImage fondo;
PImage titulo;
PImage fnegro;
int miVariable = 1500;
float posX, posY;
float opacity = 0.5;
PFont nuevafuente;
int x, x2, x3, x4, x5, x6;
int y;
int f;

void setup() {
  size (900, 800);
  fondo = loadImage("fondo.png");
  titulo = loadImage("titulo.png");
  fnegro = loadImage("fnegro.png");
  println(miVariable);
  nuevafuente = loadFont("Medium.vlw");
  textFont(nuevafuente);
  posX = 0;
  posY = 0;
  y = 800;
  x = 1200;
  x2 = 1300;
  x3 = 1400;
  x4 = 1500;
  x5 = 1600;
  x6 = 2000;
  f = 1;
}

void draw () {
  background(0);
  miVariable = frameCount;

  if (0 < frameCount && 1065 > frameCount) {
    image(fondo, posX, posY);
  }

  if (opacity < 255) {
    opacity += 0.5;
    tint(255, opacity);
    image(fondo, posX, posY);
  }

  image(titulo, 220, 800-miVariable, width/2, height/3);

  if (frameCount < 0 ||  frameCount > 1070 ) {
    image(fnegro, posX, posY, width, height+f);
   f = f+1;
  }

  if (frameCount < 0 ||  frameCount > 1080 ) {
    text("         YandereDev\nAlexander Stuart Mahan", width/3, y);
    y = y-2;
  }

  if (frameCount < 0 ||  frameCount > 1090 ) {
    text("Personajes/Actores", 330, x);
    x = x-2;
  }

  if (frameCount < 0 ||  frameCount > 1100 ) {
    text("  Ayano Aishi\n  Ryoba Aishi\nMichaela Laws", 365, x2);
    x2 = x2-2;
  }

  if (frameCount < 0 ||  frameCount > 1120 ) {
    text(" Taro Yamada\n Austin Hively", 365, x3);
    x3 = x3-2;
  }

  if (frameCount < 0 ||  frameCount > 1130 ) {
    text("   Info-Chan\n Cayla Martín", 365, x4);
    x4 = x4-2;
  }

  if (frameCount < 0 ||  frameCount > 1140 ) {
    text("Osana Najimi\nBritany Larda", 365, x5);
    x5 = x5-2;
  }

  if (frameCount < 0 ||  frameCount > 1150 ) {
    text("Agradecimiento especial\n       Joseph D. Morris", 310, x6);
    x6 = x6-2;
  }

}
void keyPressed() {
  if (key == 'h' || key == 'H') {
    frameCount = 0;   
  }
}
//void keyPressed () {
  //if (key == ' ') {
    //frameCount = 0;
  //}
//}
