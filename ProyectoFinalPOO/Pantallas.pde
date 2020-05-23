class pantallas{
  int pan, turno, j1, j2, vida1, vida2;
  PFont fuente1, fuente2;
  PImage inicio, fondoDos, fondoTres, fondoCuatro;
 
  pantallas(){
    pan =0;
    turno = 0;
    j1 = 0;
    j2 = 0;
    vida1 = 100;
    vida2 = 100;
    fuente1 = loadFont("Algerian-30.vlw");
    fuente2 = loadFont("CenturyGothic-Bold-30.vlw");
    inicio = loadImage("inicio.jpg");
    fondoDos = loadImage("fondodos.jpg");
    fondoTres = loadImage("fondotres.png");
    fondoCuatro = loadImage("fondocuatro.jpg");
    
   noStroke();
  }
  

void pantalla1(){
 image(inicio,0,0,1300,600);
  textFont(fuente1);
  textSize(50);
  fill(45,26,4);
  text("La Batalla Presidencial",315,100);
  textFont(fuente2);
   textSize(20);
   fill(255);
   text("INSTRUCCIONES:",10,500);
   text("Presione la tecla (S) para continuar",10,530);
  if(vida1 <= 0 || vida2 <= 0){vida1 = 100; vida2 = 100;}
  turno = 0;
  if(key == 'S'|| key == 's'){pan = 1;}
}
void pantalla2(){
 
  a1.display();
  n1.display();
  f1.display();
  c1.display();
  z1.display();
 
  textFont(fuente2);
  textSize(20);
  fill(255);
  text("Cada jugador seleccione a su personaje presionando la tecla indicada",10,550);
  textSize(25);
  text("A",148,190);
  text("N",396,190);
  text("F",646,190);
  text("C",874,190);
  text("Z",1133,190);
  
 
 if((key== 'A' || key == 'a') && (turno == 0)) {
   j1 =0;
   turno=1;
 }
 else{
 if((key == 'A'|| key== 'a') && (turno == 1)&& (j1 != 0)){
 j2 = 0;
 pan=2;}
 }
 if((key== 'N' || key == 'n') && (turno == 0)) {
 j1 =1;
 turno = 1;}
  else{
 if((key == 'N'|| key== 'n') && (turno == 1)&& (j1 != 1)){
 j2 = 1;
 pan = 2;}
 }
 if((key== 'F' || key == 'f') && (turno == 0)) {
   j1 =2;
   turno = 1;
 }
  else{
 if((key == 'F'|| key== 'f') && (turno == 1)&& (j1 != 2)){
 j2 = 2;
 pan = 2;}
 }
 if((key== 'C' || key == 'c') && (turno == 0)) {
   j1 =3;
   turno = 1;
 }
  else{
 if((key == 'C'|| key== 'c') && (turno == 1)&& (j1 != 3)){
 j2 = 3;
 pan = 2;}
 }
  if((key== 'Z' || key == 'z') && (turno == 0)) {
   j1 =4;
   turno = 1;
 }
  else{
 if((key == 'Z'|| key== 'z') && (turno == 1)&& (j1 != 4)){
 j2 = 4;
 pan = 2;}
 }
  
}
void pantalla3(){
  image(fondoDos,0,0,1300,600);
  
 if((key == 'Q'|| key =='q')&& (turno == 0)){vida2 -=random(1,5); turno =1;}
 if((key == 'P'|| key =='p') && (turno == 1)){vida1 -=random(1,5); turno = 0;}
 

 if(vida1<=0){pan = 3;}
 if(vida2<=0){pan = 3;}

 if(j1 ==0){a2.display();fill(255,255,0);rect(125,180,vida1*4,10);}
 if(j1 ==1){n2.display();fill(0,0,255);rect(125,180,vida1*4,10);}
 if(j1 ==2){f2.display();fill(0,255,0);rect(125,180,vida1*4,10);}
 if(j1 ==3){c2.display();fill(255,125,0);rect(125,180,vida1*4,10);}
 if(j1 ==4){z2.display();fill(255,0,0);rect(125,180,vida1*4,10);}
 
 if(j2 ==0){a3.display();fill(255,255,0);rect(775,180,vida2*4,10);}
 if(j2 ==1){n3.display();fill(0,0,255);rect(775,180,vida2*4,10);}
 if(j2 ==2){f3.display();fill(0,255,0);rect(775,180,vida2*4,10);}
 if(j2 ==3){c3.display();fill(255,125,0);rect(775,180,vida2*4,10);}
 if(j2 ==4){z3.display();fill(255,0,0);rect(775,180,vida2*4,10);}
 
  image(fondoTres,0,0,1300,600);
  fill(45,26,4);
  rect(125,160,400,20);
  rect(775,160,400,20);
  fill(102,66,30);
  rect(125,540,400,30);
  rect(775,540,400,30);
  textFont(fuente2);
  textSize(25);
  fill(255);
  text("¡Que comience la batalla!",495,50);
  textSize(15);
  text("Nivel de argumentos",125,176);
  text("Nivel de argumentos",777,176);
  text("Jugador 1: presiona (q) para atacar",192,560);
  text("Jugador 2: presiona (p) para atacar",842,560);
}

void pantalla4(){
  image(fondoCuatro,0,0,1300,600);
  textFont(fuente2);
  
  textSize(25);
  fill(255);
  text("El ganador de la batalla es: ",470,90);
  textSize(18);
  text("Presione (e) para iniciar un juego nuevo",475,574);
  text("Presione (x) para salir del juego",510,591);
  if(key == 'E'|| key == 'e'){pan = 0;}
  if(key =='X'|| key== 'x' ){exit();}
  textSize(28);
}
void display(){
  switch(pan){
    case 0: pantalla1();
    break;
    case 1: pantalla2();
    break;
    case 2: pantalla3();
    break;
    case 3: pantalla4();
    if((vida1 <= 0)&&(j2 == 0)){a4.display();fill(255);text("Jugador 2",570,145);}
    if((vida1 <= 0)&&(j2 == 1)){n4.display();fill(255);text("Jugador 2",570,145);}
    if((vida1 <= 0)&&(j2 == 2)){f4.display();fill(255);text("Jugador 2",570,145);}
    if((vida1 <= 0)&&(j2 == 3)){c4.display();fill(255);text("Jugador 2",570,145);}
    if((vida1 <= 0)&&(j2 == 4)){z4.display();fill(255);text("Jugador 2",570,145);}
    
    if((vida2 <= 0)&&(j1 == 0)){a4.display();fill(255);text("Jugador 1",570,145);}
    if((vida2 <= 0)&&(j1 == 1)){n4.display();fill(255);text("Jugador 1",570,145);}
    if((vida2 <= 0)&&(j1 == 2)){f4.display();fill(255);text("Jugador 1",570,145);}
    if((vida2 <= 0)&&(j1 == 3)){c4.display();fill(255);text("Jugador 1",570,145);}
    if((vida2 <= 0)&&(j1 == 4)){z4.display();fill(255);text("Jugador 1",570,145);}
    
    break;
  }
}
}
