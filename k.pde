import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
int pantalla=0;
int r;

import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;



Box2DProcessing box2d;


Box box;

ArrayList<Particle> particles;
ArrayList<Particles> particless;


Spring spring;

PFont font;
float xoff = 0;
float yoff = 1000;

Boundary wall;

void setup() {
  size(500,500);
  smooth();
  

  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.listenForCollisions();

 
  box = new Box(width/2,height/2);
 
  
  spring = new Spring();
  spring.bind(width/2,height/2,box);

  
  particles = new ArrayList<Particle>();
  particless = new ArrayList<Particles>();
  wall = new Boundary(width/2, height-5, width, 10);
 
}

void draw() {

    if (pantalla==0){
    
    background(0);
    font = createFont("FontdinerSwanky.ttf", 70);
    textFont(font);
    text("KRAK",115,260);
    textSize(30);
    translate (width/2, height/2);
    ellipseMode(CENTER);
    circulo(0,0,300);
    if (mousePressed){
      pantalla=1;
    }
  }
  else if(pantalla==1){
    pantalla1 ();
  if (random(1) < 0.2) {
   float sz = random(4,8);
  particles.add(new Particle(width/2,-20,sz));
 }
 else if (pantalla==1){
    pantalla1();
  if(random(2) < 0.2){
    float sz = random(5,8);
    particless.add(new Particles(width/2,-20,sz));
    
  }
 
  
  float x = noise(xoff)*width;
  float y = noise(yoff)*height;
  xoff += 0.01;
  yoff += 0.01;

 
  if (mousePressed) {
    spring.update(mouseX,mouseY);
    spring.display();
  } else {
    spring.update(x,y);
  }
  box.body.setAngularVelocity(0);

   box2d.step();
  for (int i = particles.size()-1; i >= 0; i--) {
    Particle p = particles.get(i);
    p.display();
    
    if (p.done()) {
      particles.remove(i);
    }
  box.display();
  }
   box2d.step();
  for (int i = particless.size()-1; i >= 0; i--) {
    Particles p = particless.get(i);
    p.display();
    
    if (p.done()) {
      particless.remove(i);
    }
    box.display();
    }
   }
  wall.display();
  }
}
void pantalla1(){
  background(0);
 }

void circulo(float x, float y, float t){
  stroke(random(255), random(255), random(255));
  ellipse(x,y,random(7),random(7));
  if (t>15){
    circulo(x+t,y, t/2);
    circulo(x-t,y, t/2);
    circulo(x,y+t, t/2);
    circulo(x,y-t, t/2);
    
  }
}

  
 void beginContact(Contact cp) {
 
  Fixture f1 = cp.getFixtureA();
  Fixture f2 = cp.getFixtureB();
  
  Body b1 = f1.getBody();
  Body b2 = f2.getBody();
 
  Object o1 = b1.getUserData();
  Object o2 = b2.getUserData();
 
   if (o1.getClass() == Particle.class && o2.getClass() == Particles.class) {
    Particle p1 = (Particle) o1;
    p1.change();
    Particles p2 = (Particles) o2;
    p2.change();
  }
 
}
void endContact(Contact cp) {
}