import com.processinghacks.arcball.*;

import processing.opengl.*;
import javax.media.opengl.*;
GL gl;
PGraphicsOpenGL pgl;

//PImage bkgr;

Orbiter sun, mercury, venus, earth, moon, mars, jupiter, saturn, rings, uranus, neptune, pluto;
boolean DRAW_ORBITS = true;

void setup ()
{
  size(1200,1000, OPENGL);
  ArcBall arcball = new ArcBall(width/2, height/2, 0,500,this);

  // antialiasing
  hint(ENABLE_OPENGL_4X_SMOOTH);
  pgl = (PGraphicsOpenGL) g;
  gl = pgl.gl;
  gl.glHint (gl.GL_LINE_SMOOTH_HINT, gl.GL_NICEST);
  gl.glEnable (gl.GL_LINE_SMOOTH);

  noStroke();

  sun = new Orbiter();
  sun.c = color(255, 130, 40);
  sun.x = width/2;
  sun.y = height/2;

  mercury = new Orbiter();
  mercury.parent = sun;
  mercury.d = 135;
  mercury.orbitdays = 50.1;
  mercury.r = 7;
  mercury.c = color(185);

  venus = new Orbiter();
  venus.parent = sun;
  venus.d = 168;
  venus.orbitdays = 75.1;
  venus.r = 12;
  venus.c = color(85,30,10);

  earth = new Orbiter();
  earth.parent = sun;
  earth.d = 205;
  earth.orbitdays = 365.2; 
  earth.r = 13;
  earth.c = color(5, 98, 210);
  
  mars = new Orbiter();
  mars.parent = sun;
  mars.d = 230;
  mars.orbitdays = 85.1; 
  mars.r = 10;
  mars.c = color(250, 8, 0);
  
  
  
  
  
  
  
  
}


void draw() 
{
  background(0,0,0);

  noLights();
  sun.draw();
  lights();
  mercury.draw();
  venus.draw();
  earth.draw();
  mars.draw();
 // jupiter.draw();
 // saturn.draw();
 // uranus.draw();
//  neptune.draw();
//  pluto.draw();
  
}



/*

 //to find x,y cordinates
 void mousePressed()
 {
 println(mouseX + " " + mouseY);
 }
 */
