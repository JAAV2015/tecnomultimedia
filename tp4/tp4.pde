//ALMACHI VILLEGAS JOSSELYN ALEXANDRA 91326/2
//JOSE LUIS BUGIOLACHI
//Video; https://youtu.be/SF7VS9m3QQE
Principal P;
void setup () {
  size (415, 250);
  P = new Principal ();
}

void draw() {
  background(0);
  P.display();
}
void keyPressed() {
   P.moveCarrito(keyCode);
}
