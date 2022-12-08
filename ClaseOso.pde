class oso {
  float posx;
  float posy;
  PImage oso;
  int tam=50;
  int cant=0;
  oso(float x, float y) {
    oso = loadImage("oso.png");
    posx= x;
    posy= y;
  }

  void drawoso() {
    image(oso, posx, posy, 30, 30);
    posy+=5;
  }
}
