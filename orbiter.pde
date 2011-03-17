

class Orbiter extends TexturedSphere {

  float x,y,z;
  float r = 50;
  float d = 0, orbitdays = 0,rotationdays = 0;
  color c = color(255, 126, 45);
  Orbiter parent;

  PImage texmap;
  boolean usingTexture = false;

  Orbiter() {
  }

  void setTexture(String imageFile) {
    texmap = loadImage( imageFile );    
    usingTexture = true;
    initializeSphere(35);
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
    if (DRAW_ORBITS) {
      pushMatrix();
      rotateY(PI/2);
      rotateX(PI/2);
      noFill();
      stroke(255);
      ellipse(0,0,d*2,d*2);
      popMatrix();
    }

    //translate distance from parent
    translate (0, 0, d);
    fill(c);
    noStroke();

    if(orbitdays > 0 ) {
      rotateY( (rotationdays / frameCount) * DAY_MULTIPLIER);
    }
    if (usingTexture) {
      // draw textured sphere
      texturedSphere(r, texmap);
    } 
    else {
      sphere(r);
    }

    popMatrix();
  }

  void draworbit()
  {
  }
}
