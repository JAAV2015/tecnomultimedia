//ALMACHI VILLEGAS JOSSELYN ALEXANDRA 91326/2
//JOSE LUIS BUGIOLACHI
//Video, https://youtu.be/3w8UVNyxX00
//Se reinicia con cualquier tecla 

int cant = 5;
int tam;

void setup () {
  size (700, 700);
}

void draw () {
  background (0);
  tam = width/cant;
  for (int i=0; i<cant; i++) {
    for (int x=0; x<cant; x++) {
      for (int c=tam; c>10; c-=20) {
        float dista = dist(mouseX, mouseY, 0, 0);
        float tono = dista*255/dist(width, height, 0, 0);
        float cl = random(width);
        fill (150, 0, 200, tono);
        rect(i*tam, x*tam, c, tam);
        fill (cl, 0, cl);
        ellipse(i*tam, x*tam, c, c);
      }
    }
  }
}

void keyPressed() {
  cant = 5;
}
void mousePressed () {
  cant++;
}
