PFont fuente;
int f, x, y, z, k;

ArrayList < Integer > posx = new ArrayList < Integer >();
ArrayList < Integer > posy = new ArrayList < Integer >();

int d = 1;
int [] dx = {0, 0, -1, 1};
int [] dy = {-1, 1, 0, 0};

int ax;
int ay;

int row = 50;
int col = 50;
int bs = 25;

boolean gameOver = false;

void setup() {
  size (700, 700);
  fuente = loadFont("Arial.vlw");
  posx.add(10);
  posy.add(10);
  ax = (int)random(0, 50);
  ay = (int)random(0, 50);
}
void draw() {
  background (0);

  if (frameCount > 0 &&  frameCount < 290 ) {
    textSize(60);
    text("SNAKy", x, 350);
    x++;
  }

  if (frameCount > 300 &&  frameCount < 1500 ) {
    textSize(50);
    text("INSTRUCCIONES", 190, y);
    y++;
  }

  if (frameCount > 550 &&  frameCount < 1500 ) {
    textSize(40);
    text("Come todas las manzanas posibles\n            para que crescas mas\n     y evita chocar contigo mismo\nmoviendote con las teclas A, W, D, S ", 60, z);
    z++;
  }
  if (frameCount > 1100 &&  frameCount < 1900 ) {
    textSize(50);
    text("       CREDITOS\nCREADOR/AUTOR \nJosselyn Almachi", 180, f);
    f++;
  }
  if (frameCount > 2000 ||  frameCount < 0 ) {
    if (gameOver == true) {
    } else {
      stroke(50);
      for (int i=0; i< row; i++) {
        line(0, i*bs, width, i*bs);
      }
        for (int j=0; j<col; j++) {
          line (j*bs, 0, j*bs, height);
        }
      }
    }
  }
  move();
  drawman();
  drawsnaky();
}
void move() {
  posx.add(0, posx.get(0)+dx[d]);
  posy.add(0, posy.get(0)+dy[d]);
  posx.remove(posx.size()-1);
  posy.remove(posy.size()-1);
}

void man(){
  if ((posx.get(0)==ax) && (posy.get(0)==ay)){
    ax=(int)random(0, 50);
    ay=(int)random(0, 50);
    posx.add (posx.get(posx.size()-1));
    posy.add (posy.get(posy.size()-1));
  }
  
void drawsnaky() {
  fill(50, 140, 0);
  for(int i = 0; i< posx.size(); i++){
    rect (posx.get(i)*bs, posy.get(i)*bs, bs, bs);
}
  
  void drawman (){
    fill (215, 0, 75);
    rect(ax*bs, ay*bs, bs, bs);
  }
  
  void keyPressed(){
    if (key == 'w'|| keyCode == UP) d =0;
    if (key == 's'|| keyCode == DOWN) d =1;
    if (key == 'a'|| keyCode == LEFT) d =2;
    if (key == 'd'|| keyCode == RIGHT) d =3;
