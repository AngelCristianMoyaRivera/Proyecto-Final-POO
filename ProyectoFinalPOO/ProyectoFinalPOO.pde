import processing.sound.*;
AudioSample sonido1;
pantallas p;
Amlo a1, a2, a3, a4;
Nieto n1, n2, n3, n4;
Fox f1, f2, f3, f4;
Calderon c1, c2, c3, c4;
Zedillo z1, z2, z3, z4;
PImage amlo, nieto,fox, calderon, zedillo;
void setup(){
  size(1300,600);
  p = new pantallas();
  amlo = loadImage("amlo.png");
  nieto = loadImage("nieto.png");
  fox = loadImage("fox.png");
  calderon = loadImage("calderon.png");
  zedillo = loadImage("zedillo.png");
  //seleccion
  a1 = new Amlo(120,290);
  n1 = new Nieto(360,290);
  f1 = new Fox(610,290);
  c1 = new Calderon(850,290);
  z1 = new Zedillo(1094,290);
  //j1
  a2 = new Amlo(296,252);
  n2 = new Nieto(296,252);
  f2 = new Fox(296,252);
  c2 = new Calderon(296,252);
  z2 = new Zedillo(296,252);
  //j2
  a3 = new Amlo(936,252);
  n3 = new Nieto(936,252);
  f3 = new Fox(936,252);
  c3 = new Calderon(936,252);
  z3 = new Zedillo(936,252);
  //Personaje ganador
  a4 = new Amlo(590,334);
  n4 = new Nieto(590,334);
  f4 = new Fox(590,334);
  c4 = new Calderon(590,334);
  z4 = new Zedillo(590,334);
  sonido1 = new SoundFile(this,"Himno Mexicano.mp3");
  sonido1.play();
  sonido1.loop();
}
void draw(){
p.display();
}
