class fondo {
  PImage F;
  int mifondo;
  int Fx;

  fondo () {
    F = loadImage ("fondo.jpg");
  }
  void drawFondo () {
    image (F, 0, 0);
  }
}
