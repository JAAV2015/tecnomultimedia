class carrito {
  PImage carrito;
  int cx;
  int cy = 220;

  carrito() {
    carrito = loadImage("carrito.png");
  }
  void drawCarrito() {
    image(carrito, cx, cy, 80, 80);
  }

  void moverIzq() {
    this.cx = this.cx - 50;
    this.drawCarrito();
  }

  void moverDer() {
    this.cx = this.cx + 50;
    this.drawCarrito();
  }
  public int getPos() {
    return this.cx;
  }
}
