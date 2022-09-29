class Fondo {
  PImage F;
  int mifondo;
  int Fx;
  Fondo () {
    Fx = -width;
    F = loadImage ("fondo.jpg");
  }

  void drawFondo () {
    image (F, Fx, 0);
    mover ();
  }

  void mover () {
    Fx = Fx<0 ? Fx : -width;
    Fx ++;
  }
}
