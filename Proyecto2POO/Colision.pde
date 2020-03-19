class Celda {

  Body body;
  float r;

  color col;

Celda(float x, float y, float r_) {
    r = r_;
    
    makeBody(x, y, r);
    body.setUserData(this);
  }

  void killBody() {
    box2d.destroyBody(body);
  }

  boolean done() {
    // Let's find the screen position of the particle
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Is it off the bottom of the screen?
    if (pos.y > height+r*2) {
      killBody();
      return true;
    }
    return false;
  }

  void display() {
    Vec2 pos = box2d.getBodyPixelCoord(body);
    pushMatrix();
    translate(pos.x, pos.y);
    image(celdilla1, 0, 0, r*2, r*2);
    popMatrix();
  }
    void display2() {
    Vec2 pos = box2d.getBodyPixelCoord(body);
    pushMatrix();
    translate(pos.x, pos.y);
    image(celdilla2, 0, 0, r*2, r*2);
    popMatrix();
  }
  void change() {
     pushMatrix();
     Vec2 pos = box2d.getBodyPixelCoord(body);
    translate(pos.x, pos.y);
    image(celdilla2, 0, 0, r*2, r*2);
    popMatrix();
  }
  void makeBody(float x, float y, float r) {
    BodyDef bd = new BodyDef();
    bd.position = box2d.coordPixelsToWorld(x, y);
    bd.type = BodyType.STATIC;
    body = box2d.createBody(bd);
    
    CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);

    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
  
    fd.density = 4;
    fd.friction = 10;
    fd.restitution = 0.3;
    
    body.createFixture(fd);

    body.setAngularVelocity(random(-10, 10));
  }
}
