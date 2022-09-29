class Principal {
  Fondo fon;
  Carrito c;
  Principal () {
    fon = new Fondo();
    c = new Carrito(300, 130, 100, 100);
  }

  void display() {
    fon.drawFondo();
    c.drawCarrito();
  }
 void moveCarrito(int tecla) {
    c.moveCarrito(tecla);
  }
}
