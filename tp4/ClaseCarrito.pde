class Carrito {
  float cx, cy;
  float opacity = 0.5;
  int alto, ancho;
  Ruedas R;
  Carrito(float cx, float cy, int alto, int ancho) {
    this.cx = cx;
    this.cy = cy;
    this.alto = alto;
    this.ancho = ancho;
    R = new Ruedas();
  }
  void drawCarrito() {
    fill(222,222,222,180);
    rect(cx, cy+alto/2, ancho, alto/2);
    for (int i = 1; i < 100; i += 10) {
      line(cx+i, cy+alto, cx+i, cy+alto/2);
    }
    strokeWeight(3);
    fill(222, 222, 222);
    rect (cx+ancho/3, cy+alto/5, ancho/6, alto/2);
    R.drawRuedas(cx, cy+alto, alto/2 );
    R.drawRuedas(cx+ancho, cy+alto, alto/2);
  }
  void moveCarrito(int flechas) {
    if (flechas ==LEFT) {
      cx -= 5;
    }
    if (flechas == RIGHT) {
      cx += 5;
    }
  }
}
