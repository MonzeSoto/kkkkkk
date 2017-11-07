import processing.sound.*;
SoundFile music;
Cats Angelicat;
Cats Cheficat;
Cats Dukeow;
Cats Caticorn;
Cats Wizcat;
Cats Angelibad;
Cats  Chefibad ;
Cats Dukeew;
Cats Badcorn;
Cats  Wizad;
Cats cat1;
Cats cat2;
int Mundo=0;
PImage fondo, fondo2, a1,fondo6,fondo0,fondoo,u1,c1, d1, w1,w3,fondo3,
                      a3,fondoo1, d3,c3,u3,nip;
PFont font1;
int hbarra = 40;
int hturno = 25;
int turno=0;
int triunfador=0;
int puntos1=0;
int puntos2=0;
int catt1;
int catt2;
float r = random(0,8);
int a = 90;
int b = 90;
  
void setup(){
  size(900,560);
  background(0);
  //IMAGENES
  fondo=loadImage("fondo41.jpg");
  fondo2=loadImage("fondo1.jpg");
  fondo6=loadImage("fondo6.jpg");
  fondo0=loadImage("fondo5.jpg");
  fondo3=loadImage("fondo3.jpg");
  nip=loadImage("catnip.jpg");
  
  a1=loadImage("a1.png");
 c1=loadImage("c1.png");
  d1=loadImage("d1.png");
  u1=loadImage("u1.png");
 w1=loadImage("w1.png");
  
  a3=loadImage("a3.png");
 c3=loadImage("c3.png");
  d3=loadImage("d3.png");
u3=loadImage("u3.png");
w3=loadImage("w3.png");




  //texto
//font1=("ChaparralPro-Regular-48.vlw");

  //Gatos
  
 Angelicat = new Cats("Angelicat;",210,7,8,12,4);
Cheficat = new Cats("Cheficat",210,7,9,14,3);
Dukeow = new Cats("Dukeow",210,7,9,15,2);
Caticorn= new Cats("Caticorn",210,7,9,13,1);
 Wizcat = new Cats("Wizcat",210,8,9,12,0);
  
 Angelibad = new Cats("Angelibad;",210,7,8,12,4);
 Chefibad= new Cats("Chefibad",210,7,9,14,3);
 Dukeew = new Cats("Dukeew",210,7,9,15,2);
Badcorn= new Cats("Badcorn",210,7,9,13,1);
Wizad = new Cats("Wizad",210,8,9,12,0);
 
 //SOUND
music = new SoundFile(this, "music.mp3");
music.play();
music.amp(0.4);

}
void draw(){
 switch(Mundo){
    case 0:
    Inicio();
    break;
    
    case 1:
    Instrucciones();
    break;
    
    case 2:
    Seleccion1();
    break;
    
    
    case 3:
    Seleccion2();
    break;
    
    case 4: 
    Pelea();
    break;
    
    case 5:
    resultado();
    break;
    
   
 }
}

 void Inicio(){

  background(0);
  image(fondo6,0,0);
  //textFont();
  textSize(20);
 text("Click para continuar",490,370);
  if (mousePressed){
  Mundo=1;
  }
}
void Instrucciones(){
  background(0);
  image(fondo,0,0);

   text("Presiona z para continuar",490,400);
   if(keyPressed){
  if(key=='z'){
    Mundo=2;}
}
}

void Seleccion1(){
 
 background (0);
 image(fondo2,0,0);
    noStroke();
    fill(#FFFFFF);

    
    
    textSize(30);
    text("Angelicat",45,200);
    textSize(15);
    fill(#FFFFFF);
    text("Presione el 0",90,250);
    
    textSize(30);
    fill(#FFFFFF);
    text("Cheficat",380,200);
    textSize(15);
    fill(#FFFFFF);
    text("Presione el 1",410,250);
    
    textSize(30);
    fill(#FFFFFF);
    text("Dukeow",670,200);
    textSize(15);
    fill(#FFFFFF);
    text("Presione el 2",685,250);
    
    textSize(30);
    fill(#FFFFFF);
    text("Caticorn",150,300);
    textSize(15);
    fill(#FFFFFF);
    text("Presione el 3",200,350);
    
    textSize(30);
    fill(#FFFFFF);
    text("Wizcat",560,300);
    textSize(15);
    fill(#FFFFFF);
    text("Presione el 4",590,350);

  
  if (keyPressed){
    if(key == '0'){
      cat1 = Angelicat;
     catt1 = 0;
      Mundo=3;
    }
    else if (key == '1'){
   cat1 = Cheficat;
    catt1 = 1;
    Mundo=3;
    }
    else if (key == '2'){
    cat1 = Dukeow;
    catt1 = 2;
    Mundo=3;
    }
    else if (key == '3'){
   cat1 = Caticorn;
    catt1 = 3;
    Mundo=3;
    }
    else if (key == '4'){
    cat1 = Wizcat;
    catt1 = 4;
    Mundo=3;
    }
  }
}
void Seleccion2(){
background (0);
 image(fondo2,0,0);
  
    fill(#FFFFFF);
    textSize(30);
    text("Angelibad",45,200);
    textSize(15);
    fill(#FFFCFC);
    text("Presione el 5",75,250);
    
    textSize(30);
    fill(#FFFFFF);
    text(" Chefibad",320,200);
    textSize(15);
    fill(#FFFFFF);
    text("Presione el 6",390,250);
    
    textSize(30);
    fill(#FFFFFF);
    text("Dukeew",670,200);
    textSize(15);
    fill(#FFFFFF);
    text("Presione el 7",685,250);
    
    textSize(30);
    fill(#FFFFFF);
    text("Badcorn",150,300);
    textSize(15);
    fill(#FFFFFF);
    text("Presione el 8",155,350);
    
    textSize(30);
    fill(#FFFFFF);
    text("Wizad",560,300);
    textSize(15);
    fill(#FFFFFF);
    text("Presione el 9",570,350);


    
    if (keyPressed){
    if(key == '5'){
      cat2 = Angelibad;
      catt2 = 5;
      Mundo=4;
    }
    else if (key == '6'){
    cat2 = Chefibad;
   catt2 = 6;
    Mundo=4;
    }
    else if (key == '7'){
   cat2 = Dukeew;
   catt2 = 7;
    Mundo=4;
    }
    else if (key == '8'){
    cat2 = Badcorn;
   catt2 = 8;
    Mundo=4;
    }
    else if (key == '9'){
    cat2 = Wizad;
    catt2 = 9;
    Mundo=4;
    }
  }
}
   void Pelea(){ 
   background(0);
   image(fondo0,0,0);
   
   if(catt1 == 0){
    pushMatrix();
    translate(50,100);
    Angelicat.dibujar();  
    popMatrix();
  }
  
   else if(catt1 == 1){
    pushMatrix();
    translate(50,100);
    Cheficat.dibujar();  
    popMatrix();
  }
  else if(catt1 == 2){
    pushMatrix();
    translate(50,100);
    Dukeow.dibujar();  
    popMatrix();
  }
  else if(catt1 == 3){
    pushMatrix();
    translate(50,100);
    Caticorn.dibujar();  
    popMatrix();
  }
  
  else if(catt1 == 4){
    pushMatrix();
    translate(50,100);
    Wizcat.dibujar();  
    popMatrix();
  }
  if(catt2 == 5){
    pushMatrix();
    translate(400,100);
    Angelibad.dibujar();  
    popMatrix();
  }
  
   else if(catt2 == 6){
    pushMatrix();
    translate(400,100);
    Chefibad.dibujar();  
    popMatrix();
  }
  else if(catt2 == 7){
    pushMatrix();
    translate(400,100);
    Dukeew.dibujar();  
    popMatrix();
  }
  else if(catt2 == 8){
    pushMatrix();
    translate(400,100);
    Badcorn.dibujar();  
    popMatrix();
  }
  
  else if(catt2 == 9){
    pushMatrix();
   translate(400,100);
   Wizad.dibujar();  
    popMatrix();
  }
    if (turno ==0){
    if(keyPressed){
      if(key == 'a'){
      a= a+200;
      cat2.vida = cat2.vida - cat1 .ataque;
      turno = 1;
      
      }
      else if(key == 's'){
      cat2.vida= cat2.vida - cat1 .resistencia;
      turno = 1;
      a= a+200;
      }
      if(cat2.vida <= 0){
      Mundo = 5;
      }
    }
    }

  
if(turno == 1){
    if(keyPressed){
      if(key == 'l'){
      cat1.vida = cat1.vida -cat2.ataque;
      turno= 0 ;
      b= b-200;
      }
      else if(key == 'k'){
      cat1.vida= cat1.vida- cat2.resistencia;
      turno = 0;
      b= b-200;
      }
      if(cat1.vida <= 0){
      Mundo= 5;
      }
    }
}
if(puntos1 == 4){
    fill(#FFFFFF);
    text("ESPECIAL",250,100);
    if(keyPressed){
      if(key == 'x'){
      cat2.vida = cat2.vida - cat1.especial;
      turno = 1;
     puntos1 = 0;
      }
      if(cat2.vida <= 0){
      Mundo = 5;
   }
 }
}
if(puntos2 == 4){
    fill(#FFFFFF);
    text("ESPECIAL",750,100);
    text("Preciona m",750,100);
    if(keyPressed){
      if(key == 'm'){
      cat1.vida = cat1.vida - cat2.especial;
      turno = 0;
      puntos2 = 0;
      }
      if(cat1.vida <= 0){
        hbarra = 0;
        hturno = 1;
        Mundo = 5;
   }
 }
}
//Marcador de turnos
  if(turno == 0){
    fill(#FFFFFF);
    textSize(15);
    text("TU TURNO",10,100);
    }
    else {
    fill(#FFFFFF);
    textSize(15);
    text("REVENGE!",580,100);
    }
    
    if(turno == 0){
    fill(#FFFFFF);  
    }
    else{
   fill(#FFFFFF);
    }
    
    rect(0,10,250,40);
    
    if(turno == 1){
    
    }
    else{
    fill(#FFFFFF);
   
    
    rect(675,10,250,40);
    fill(255);
    textSize(20);
    text(cat1.nombre,10,30);
    text(cat2.nombre,680,30);
    
    if(cat1.vida >= 0 && cat1.vida <= 30){
    fill(#FFFFFF);
    }
    else if(cat1.vida > 20 && cat1.vida <= 60){
    fill(#FFFFFF);
    }
    else{
    fill(#0FFC00);
    }
    rect(10,50,cat1.vida*2,5);
    
    if(cat2.vida >= 0 && cat2.vida <= 30){
    fill(#ff0000);
    }
    else if(cat2.vida > 20 && cat2.vida <= 30){
    fill(#F1FC7A);
    }
    else{
    fill(#00ff00);
    }
    rect(490,50,cat2.vida*2,5);
    }

}

void resultado(){
background(0);
image(fondo3,0,0);
textSize(35);
text("Para regresar",280,240);
text("Presione la letra  e",280,270);

if(cat1.vida > 0){
fill(#FFFFFF);

text(cat1.nombre,300,380);
pushMatrix();
    scale(10);
    translate(300, -30);
    image(nip,450,300);
    popMatrix();

}
else {

  fill(#FFFFFF);
  textSize(45);
  text(cat2.nombre,300,380);

 }
 if (keyPressed){
     if(key =='e' || key =='E'){
       
      turno=0;
      Mundo = 0;
      
       r= random(0,8);
      println(int(r));
      
   
 Angelicat = new Cats("Angelicat;",210,7,8,12,4);
Cheficat = new Cats("Cheficat",210,7,9,14,3);
Dukeow = new Cats("Dukeow",210,7,9,15,2);
Caticorn= new Cats("Caticorn",210,7,9,13,1);
 Wizcat = new Cats("Wizcat",210,8,9,12,0);
  
 Angelibad = new Cats("Angelibad;",210,7,8,12,4);
 Chefibad= new Cats("Chefibad",210,7,9,14,3);
 Dukeew = new Cats("Dukeew",210,7,9,15,2);
Badcorn= new Cats("Badcorn",210,7,9,13,1);
Wizad = new Cats("Wizad",210,8,9,12,0);
 
     
   }
 }
}
 
 void keyReleased(){
if(key == 'a' || key == 's' || key == 'l' || key == 'k'){
a = 90;
b = 100;
}

}
 