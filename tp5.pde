//https://youtu.be/0mAmY5p_F-g
//Para reiniciar el juego cuando se pierde hay que tener
//presionada la letra V 
import processing.sound.*;
SoundFile base;
principal P;
void setup () {
  size (650, 300);
  P = new principal ();
  base = new SoundFile(this, "sonido1.mp3");
  base.loop();
}

void draw() {
  background(0);
  P.dibujo();
}
void keyPressed() {
  P.pasar();
}
