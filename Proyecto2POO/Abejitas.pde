class Abejas{
  float r;
  Body body;
  Abejas(float r_, float x, float y) {
    r = r_;
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    
    bd.position = box2d.coordPixelsToWorld(x,y);
    body = box2d.world.createBody(bd);
    
    CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);
    
    
    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
   
    fd.density = 1;
    fd.friction = 0.3;
    fd.restitution = 0.3;

    body.createFixture(fd);

    body.setLinearVelocity(new Vec2(random(-5,5),random(-5,-5)));
    body.setAngularVelocity(random(-1,1));
  }
void applyForce(Vec2 v) {
    body.applyForce(v, body.getWorldCenter());
  }
void display() {
   
    Vec2 pos = box2d.getBodyPixelCoord(body);
    pushMatrix();
    translate(pos.x,pos.y);
    strokeWeight(1);
    image(abejita,0,0,r*2,r*2);
    popMatrix();
  }
}
class movimiento{
  int x,y,t,v;
movimiento(int x_,int y_){
x = x_;
y = y_;
this.t = 50;
this.v = 5;
}
void mov1(){
this.x = this.x + 2;
if(this.x>=700){this.x = -10*t;}
}
void display(){
pushMatrix();
translate(x,y);
image(abeja,0,0,t,t);
popMatrix();
}
void mov2(){
this.x = this.x - 2;
if(this.x<=-0){this.x = 24*t;}
}
void display2(){
pushMatrix();
translate(x,y);
scale(-1,1);
image(abeja,0,0,t,t);
popMatrix();
}
}
