class pantallas{
int pan, time1 = 16000, time2 = 18000, time3 = 17000, time4 = 25000;

pantallas(){
pan = 0;

for (int i = 0; i < m.length; i++) {
    m[i] = new Abejas(random(8,16),random(width),random(height));
}

}
void pantalla1(){
image(f1,0,0);
textFont(fuente);
textSize(22);
fill(0);
text("Presione (i) para ver como las abejitas producen la miel",10,25);
  movd1.display();
  movd1.mov1();
  movd2.display();
  movd2.mov1();
  movd3.display();
  movd3.mov1();
  movd4.display();
  movd4.mov1();
  movd5.display();
  movd5.mov1();
  movi1.display2();
  movi1.mov2();
  movi2.display2();
  movi2.mov2();
  movi3.display2();
  movi3.mov2();
  movi4.display2();
  movi4.mov2();
  movi5.display2();
  movi5.mov2();
   
  if(key == 'I'|| key == 'i'){pan = 1;}
  
}
void pantalla2(){
image(f2,300,300);
   a.display();

for (int i = 0; i < m.length; i++) {
    Vec2 force = a.attract(m[i]);
    m[i].applyForce(force);
    m[i].display();
    }
{
}      
   c1.display();
   c2.display();
   c3.display();
   c4.display();
   c5.display();
   c6.display();
   c7.display();
   c8.display();
   c9.display();
   c10.display();
   c11.display();
   c12.display();
    
 int Tiempo = millis();
 if(Tiempo >=time1){

 image(celdilla2,330,250,40,40);//c3
 image(celdilla2,358,300,40,40);//5
 image(celdilla2,330,350,40,40);//7
 image(celdilla2,270,350,40,40);//9
 image(celdilla2,242,300,40,40);//11
 
 }
 if(Tiempo >=time2){image(celdilla2,300,230,40,40);//c2
 image(celdilla2,358,332,40,40);//6
 image(celdilla2,242,332,40,40);//10
 image(celdilla2,270,250,40,40);//c1
 
 }
  if(Tiempo >=time3){image(celdilla2,300,230,40,40);//c2
 image(celdilla2,358,268,40,40);//4
 image(celdilla2,300,370,40,40);//8
 image(celdilla2,242,268,40,40);//12
 }
 if(Tiempo >=time4){pan = 2;}
  }

void pantalla3(){
image(f3,300,300);
textFont(fuente);
textSize(16);
fill(255);
text("Es de noche y las abejitas han terminado de producir la miel, pero está ",10,515);
text("haciendo mucho viento. ",10,530);
text("Si desea ver cómo el viento se lleva a las abejitas, haga click en el mouse",10,545);
text("y manténgalo presionado, pero aténgase a las consecuencias, ya que las ",10,560);
text("abejas pueden regresar muy enojadas",10,575);
text("Si desea salir, presione (s)",10,590);

    a.display();

for (int i = 0; i < m.length; i++) {
    Vec2 force = a.attract(m[i]);
    m[i].applyForce(force);
    m[i].display();
    }
{
}      
   cr1.display2();
   cr2.display2();
   cr3.display2();
   cr4.display2();
   cr5.display2();
   cr6.display2();
   cr7.display2();
   cr8.display2();
   cr9.display2();
   cr10.display2();
   cr11.display2();
   cr12.display2();
   
    if (mousePressed) {
    for (Abejas b: m) {
     Vec2 wind = new Vec2(40,5);
     b.applyForce(wind);
    }
    }
  if(key == 'S'|| key == 's'){exit();}
}

void display(){
  switch(pan){
    case 0: pantalla1();
    break;
    case 1: pantalla2();
    break;
    case 2: pantalla3();
    break;
  
  }
}
}
