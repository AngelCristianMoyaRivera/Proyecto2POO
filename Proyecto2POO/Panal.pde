class Panal{
  
   Body body;
  float r;
   color col;
  Panal(float r_, float x, float y) {
    r = 50;
    col = color(175);
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    
    bd.position = box2d.coordPixelsToWorld(x,y);
    body = box2d.world.createBody(bd);
    
    CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);
    
    body.createFixture(cs,1);
  }
  
   Vec2 attract(Abejas m) {
    float G = 100;
    Vec2 pos = body.getWorldCenter();    
    Vec2 moverPos = m.body.getWorldCenter();
    
    Vec2 force = pos.sub(moverPos);
    float distance = force.length();
    
    distance = constrain(distance,1,5);
    force.normalize();
   
    float strength = (G * 1 * m.body.m_mass) / (distance * distance); 
    force.mulLocal(strength);         
    return force;
  }
  void change() {
    col = color(255, 0, 0);
  }
   void display() {
  
    Vec2 pos = box2d.getBodyPixelCoord(body);
  
    pushMatrix();
    translate(pos.x,pos.y);
    fill(0);
    stroke(0);
    strokeWeight(1);
    imageMode(CENTER);
    image(panal,0,0,r*2,r*2);
    popMatrix();
  }
 
}
