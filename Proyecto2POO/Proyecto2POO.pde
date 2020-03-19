import shiffman.box2d.*; 
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.Shape;

Box2DProcessing box2d;
Abejas[] m;

PImage panal, abejita, abeja, celdilla1, celdilla2,f1, f2, f3;
Panal a;
PFont fuente;

movimiento movd1, movd2,movd3,movd4,movd5,movi1,movi2,movi3,movi4,movi5;
Celda c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,cr1,cr2,cr3,cr4,cr5,cr6,cr7,cr8,cr9,cr10,cr11,cr12;
pantallas p;
void setup(){
size(600,600);
fuente = loadFont("CenturyGothic-48.vlw");
 movd1 = new movimiento(0,100);
 movd2 = new movimiento(-100,100);
 movd3 = new movimiento(-200,100);
 movd4 = new movimiento(-300,100);
 movd5 = new movimiento(-400,100);
 movi1 = new movimiento(600,500);
 movi2 = new movimiento(700,500);
 movi3 = new movimiento(800,500);
 movi4 = new movimiento(900,500);
 movi5 = new movimiento(1000,500);
 m = new Abejas[25];
 panal = loadImage("panal.png");
 abeja = loadImage("abeja.png");
 abejita = loadImage("abejita.png");
 celdilla1 = loadImage("celdilla1.png");
 celdilla2 = loadImage("celdilla2.png");
 f1 = loadImage("f1.jpg");
 f2 = loadImage("f2.jpg");
 f3 = loadImage("f3.jpg");
 box2d = new Box2DProcessing(this);
 box2d.createWorld();
 box2d.setGravity(0,0);
 p = new pantallas();
 a = new Panal(32,width/2,height/2);
  c1 = new Celda(270,250,20);
  c2 = new Celda(300,230,20);
  c3 = new Celda(330,250,20);
  c4 = new Celda(358,268,18);
  c5 = new Celda(358,300,18);
  c6 = new Celda(358,332,18);
  c7 = new Celda(330,350,20);
  c8 = new Celda(300,370,20);
  c9 = new Celda(270,350,20);
  c10 = new Celda(242,332,18);
  c11 = new Celda(242,300,18);
  c12 = new Celda(242,268,18);
  cr1 = new Celda(270,250,20);
  cr2 = new Celda(300,230,20);
  cr3 = new Celda(330,250,20);
  cr4 = new Celda(358,268,18);
  cr5 = new Celda(358,300,18);
  cr6 = new Celda(358,332,18);
  cr7 = new Celda(330,350,20);
  cr8 = new Celda(300,370,20);
  cr9 = new Celda(270,350,20);
  cr10 = new Celda(242,332,18);
  cr11 = new Celda(242,300,18);
  cr12 = new Celda(242,268,18);
   box2d.listenForCollisions();

}
void draw(){
  box2d.step();
  p.display();
}



  
