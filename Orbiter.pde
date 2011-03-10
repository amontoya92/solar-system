class Orbiter {

  float x,y,z;
  float r = 50;
  color c = color(255, 126, 45);

  Orbiter() {
  }

  void draw() {
    pushMatrix();
    translate(x,y,z);
    fill(c);
    sphere(r);
    popMatrix();
  }
  
  
    
  
}
