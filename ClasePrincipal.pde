class principal {
  int estado =0;
  int tiempo =0;
  int contador =15;
  PFont bx, by;
  int seg, tComenzar;
  fondo fon = new fondo();
  carrito c = new carrito();
  oso [] o = new oso [4];
  principal () {
    bx = loadFont ("fuente1.vlw");
    by = createFont ("fuente2.ttf", 32);
    for (int i=0; i<o.length; i++) {
      o[i] = new oso(100+i*100, random(-20, 0));
    }
  }
  void estados() {
    if (estado == 0) {
      titulo();
    } else if (estado == 1) {
      instrucciones();
    } else if (estado == 2) {
      juego();
    } else if (estado == 3) {
      perder();
    } else  if (estado== 4) {
      ganar();
    } else if (estado == 5) {
      creditos();
    }
  }
  void titulo() {
    if (estado == 0) {
      background(255);
      textAlign(CENTER);
      fill(0);
      textFont(bx, 55);
      text("SUPERMARKET", 325, width/5);
      textFont(by, 20);
      text("I para Instrucciones", 325, 190);
      text("C para Creditos", 325, 220);
    }
  }
  void instrucciones() {
    if (estado == 1) {
      background(255);
      textAlign(CENTER);
      fill(0);
      textFont(bx, 50);
      text("Instrucciones", 325, width/9);
      textFont(by, 23);
      text("Tu objetivo es evitar que los osos de peluche toquen", 310, 120);
      text("el carrito, o si no perderas. Para poder ganar tienes", 310, 140);
      text("que esquivar todos los osos en el tiempo limite y para", 310, 160);
      text("hacerlo tienes que moverte con las flechas <- y ->", 310, 180);
      text("del teclado tambien puedes usar las letras a o d,", 310, 200);
      text("buena suerte y que ningun oso de toque", 310, 220);
      text("J para Jugar", 325, 270);
    }
  }
  void creditos() {
    if (estado == 5) {
      background(255);
      fill(0);
      textFont(bx, 40);
      text("CREDITOS", 325, 50);
      textFont(bx, 25);
      text("CREADOR", 325, 85);
      text("MATERIA", 325, 150);
      text("AÑO", 325, 205);
      textFont(by, 20);
      text("Josselyn Almachi", 325, 105);
      text("Tecnologia Multimedia", 325, 170);
      text("ANO 2022", 325, 230);
      text("J para jugar", 325, 270);
    }
  }
  void juego() {
    estado = 2;
    fon.drawFondo();
    c.drawCarrito();
    contador();
    colision();
  }
  void perder() {
    estado = 3;
    background(255);
    fill(0);
    textFont(bx, 50);
    textAlign(CENTER);
    text("GAMEOVER", 325, width/4);
    textFont(by, 25);
    text("V para reintentar", 325, 270);
  }
  void ganar() {
    estado = 4;
    background(255);
    fill(0);
    textFont(bx, 50);
    textAlign(CENTER);
    text("GANASTE", 325, width/4);
    textFont(by, 25);
    text("V para volver", 325, 270);
  }

  void pasar() {
    if (estado == 0) {
      if (key == 'i' || key == 'I') {
        estado =1;
      } else if (key == 'j' || key == 'J')
        juego();
      else if (key == 'c' || key == 'C')
        estado =5;
    }
    if (estado == 1) {
      if (key == 'j' || key == 'J')
        juego();
    }
    if (estado == 2) {
      if (key == 'a' || keyCode == LEFT) {
        if (c.getPos() >= 0)
          c.moverIzq();
      }
      if (key == 'd' || keyCode == RIGHT) {
        if (c.getPos() <= 550)
          c.moverDer();
      }
    }
    if (estado == 3) {
      perder();
      if (key == 'v' || key == 'V') {
        tComenzar = millis()/1000 + contador;
        juego();
      }
    }
    if (estado == 4) {
      ganar();
      if (key == 'v' || key == 'V') {
        tComenzar = millis()/1000 + contador;
        juego();
      }
    }
    if (estado == 5) {
      creditos();
      if (key == 'j' || key == 'J') {
        tComenzar = millis()/1000 + contador;
        juego();
      }
    }
  }
  void contador() {
    seg = tComenzar - millis()/1000;
    if (seg < 0)
      tComenzar = millis()/1000 + contador;
    else {
      fill(255);
      rect(13, 5, 35, 28);
      fill(0);
      textFont(bx, 25);
      text(seg, 30, 30);
      if (seg == 0)
        ganar();
    }
  }
  void colision() {
    for (int e=0; e < o.length; e++) {
      o[e].drawoso();
      float distan = dist(o[e].posx, o[e].posy, c.cx, c.cy);
      if (distan <= 40) {
        perder();
      }
      if (o[e].posy > height) {
        o[e].posy= 0;
        o[e].posx= random(600);
      }
    }
  }
  void dibujo() {
    estados();
  }
}
