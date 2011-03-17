import processing.opengl.*;
import javax.media.opengl.*;
GL gl;
PGraphicsOpenGL pgl;

Orbiter sun, mercury, venus, earth, moon, mars, jupiter, saturn, rings, uranus, neptune, pluto;
boolean DRAW_ORBITS = true;
float DAY_MULTIPLIER = 100;

//arcball replacement
float rotationX = 0;
float rotationY = 0;
float velocityX = 0;
float velocityY = 0;

void setup ()
{
  size(1650,1000, OPENGL);

  // antialiasing
  hint(ENABLE_OPENGL_4X_SMOOTH);
  pgl = (PGraphicsOpenGL) g;
  gl = pgl.gl;
  gl.glHint (gl.GL_LINE_SMOOTH_HINT, gl.GL_NICEST);
  gl.glEnable (gl.GL_LINE_SMOOTH);

  noStroke();

  sun = new Orbiter();
  sun.c = color(255, 130, 40);
  sun.setTexture("sun.jpg");  
  sun.x = 0;
  sun.y = 0;

  mercury = new Orbiter();
  mercury.setTexture("mercury.jpg");
  mercury.parent = sun;
  mercury.d = 135;
  mercury.orbitdays = 87.96;
  mercury.r = 7;
  mercury.rotationdays = 58.7;
  mercury.c = color(185);

  venus = new Orbiter();
  venus.setTexture("venus.jpg");
  venus.parent = sun;
  venus.d = 164;
  venus.orbitdays = 224.68;
  venus.r = 12;
  venus.rotationdays = 243;
  venus.c = color(85,30,10);

  earth = new Orbiter();
  earth.setTexture("earth.jpg");
  earth.parent = sun;
  earth.d = 205;
  earth.orbitdays = 365.26;
  earth.r = 13;
  earth.rotationdays = 1;
  earth.c = color(5, 98, 210);

  mars = new Orbiter();
  mars.setTexture("mars.jpg");
  mars.parent = sun;
  mars.d = 245;
  mars.orbitdays = 686.98;
  mars.r = 10;
  mars.rotationdays = 10;
  mars.c = color(250, 8, 0);

  jupiter =  new Orbiter();
  jupiter.setTexture("jupiter.jpg");
  jupiter.parent = sun;
  jupiter.d = 300;
  jupiter.orbitdays = 111.862;
  jupiter.r = 31;
  jupiter.rotationdays = 9.84;
  jupiter.c = color(80, 45, 5);

  saturn =  new Orbiter();
  saturn.setTexture("saturn.jpg");
  saturn.parent = sun;
  saturn.d = 370;
  saturn.orbitdays = 29.456;
  saturn.r = 16;
  saturn.rotationdays = 10.2;
  saturn.c = color(130, 55, 0);

  uranus =  new Orbiter();
  uranus.setTexture("uranus.jpg");
  uranus.parent = sun;
  uranus.d = 440;
  uranus.orbitdays = 84.07;
  uranus.r = 17;
  uranus.rotationdays = 17.9;
  uranus.c = color(10, 100, 200);

  neptune =  new Orbiter();
  neptune.setTexture("neptune.jpg");
  neptune.parent = sun;
  neptune.d = 500;
  neptune.orbitdays = 164.81;
  neptune.r = 15;
  neptune.rotationdays = 19.1;
  neptune.c = color(7, 77, 222);

  pluto =  new Orbiter();
  pluto.setTexture("pluto.jpg");
  pluto.parent = sun;
  pluto.d = 555;
  pluto.orbitdays = 247.7;
  pluto.r = 6;
  pluto.rotationdays = 6.39;
  pluto.c = color(111, 55, 10);
}

void draw()
{
  background(0,0,0);

  translate(width/2, height/2);
  rotateX( radians(-rotationX) );  
  rotateY( radians(270 - rotationY) );  

  noLights();
  sun.draw();

  lights();
  mercury.draw();
  venus.draw();
  earth.draw();
  mars.draw();
  jupiter.draw();
  saturn.draw();
  uranus.draw();
  neptune.draw();
  pluto.draw();

  // Implements mouse control
  rotationX += velocityX;
  rotationY += velocityY;
  velocityX *= 0.95;
  velocityY *= 0.95;  

  if(mousePressed) {
    velocityX += (mouseY-pmouseY) * 0.01;
    velocityY -= (mouseX-pmouseX) * 0.01;
  }
}


void keyPressed() {
  if(key == 'z') {
    DAY_MULTIPLIER--;
  }
  if(key =='x'){
    DAY_MULTIPLIER++;
  }
  }
  /*
 //to find x,y cordinates
   void mousePressed()
   {
   println(mouseX + " " + mouseY);
   }
   */

