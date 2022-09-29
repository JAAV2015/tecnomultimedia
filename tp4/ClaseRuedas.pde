class Ruedas {
  float rx, ry, R;
  Ruedas() {
  }
  void drawRuedas(float x, float y, float R) {
    this.rx = x;
    this.ry = y;
    this.R = R;
    push();
    translate(x, y);
    rotate(radians(frameCount-1));
    fill(0);
    strokeWeight(2);
    circle(0, 0, R/2);
    fill(255);
    circle(0, 0, R/3);
    pop();
  }
}
