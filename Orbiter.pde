class Orbiter {

  float x,y,z;
  float r = 50;
  float d = 0, orbitdays = 0;
  color c = color(255, 126, 45);

  Orbiter parent;

  Orbiter() {
  }

  void draw() 
  {
    pushMatrix();

    if (parent == null) {
      translate(x, y, z);
    }
    else {
      translate(x + parent.x, y + parent.y, z + parent.z);
    }

    if(orbitdays > 0) {
      rotateY(frameCount / orbitdays);
    }
    translate (0, 0, d);
    fill(c);
    sphere(r);
    popMatrix();
  }

  void draworbit() 
  {
  }
}

