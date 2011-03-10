import com.processinghacks.arcball.*;

import processing.opengl.*;
import javax.media.opengl.*;
GL gl;
PGraphicsOpenGL pgl;

//PImage bkgr;

Orbiter sun, mercury, venus, earth, moon, mars, jupiter, saturn, rings, uranus, neptune, pluto;


void setup ()
{
  size(1200,1000, OPENGL);
  ArcBall arcball = new ArcBall(width/2,height/2,0,500,this);
  
  // antialiasing
  hint(ENABLE_OPENGL_4X_SMOOTH);
  pgl = (PGraphicsOpenGL) g;
  gl = pgl.gl;
  gl.glHint (gl.GL_LINE_SMOOTH_HINT, gl.GL_NICEST);
  gl.glEnable (gl.GL_LINE_SMOOTH);

  //bkgr = loadImage ("background.jpg");
  noStroke();

  sun = new Orbiter();
  
  mercury = new Orbiter();
  mercury.r = 7;
  mercury.c = color(185);

  venus = new Orbiter();
  venus.r =12;
  venus.c = color(85,30,10);

  earth = new Orbiter();
  earth.r =13;
  earth.c = color(5,98,210);

  moon = new Orbiter();
  moon.r = 5;
  moon.c = color(150); 

  mars = new Orbiter();
  mars.r = 10;
  mars.c = color(250,0,0);

  jupiter = new Orbiter();
  jupiter.r = 31;
  jupiter.c = color(80,45,5);

  saturn = new Orbiter();
  saturn.r = 16;
  saturn.c = color(130,55,0);

  uranus = new Orbiter();
  uranus.r = 17;
  uranus.c = color(10,100,200);

  neptune = new Orbiter();
  neptune.r = 15;
  neptune.c = color(7,77,222);

  pluto = new Orbiter();
  pluto.r = 5;
  pluto.c = color (111,55,10);
}


void draw() 
{


  background(0,0,0);
 //texture(bkgr);

/*
  //9 pluto's orbit
  fill(255);
  ellipse(width/2,height/2,1100,1100);
  fill(0);
  ellipse(width/2,height/2,1098,1098);
  //8 neptune's orbit
  fill(255);
  ellipse(width/2,height/2,1001,1001);
  fill(0);
  ellipse(width/2,height/2,999,999);
  // uranus' orbit
  fill(255);
  ellipse(width/2,height/2,882,882);
  fill(0);
  ellipse(width/2,height/2,880,880);
  // saturn's orbit
  fill(255);
  ellipse(width/2,height/2,768,768);
  fill(0);
  ellipse(width/2,height/2,766,766);
  // juiptor's orbit
  fill(255);
  ellipse(width/2,height/2,620,620);
  fill(0);
  ellipse(width/2,height/2,618,618);
  // mars' orbit
  fill(255);
  ellipse(width/2,height/2,495,495);
  fill(0);
  ellipse(width/2,height/2,493,493);
  // earth's orbit
  fill(255);
  ellipse(width/2,height/2,416,416);
  fill(0);
  ellipse(width/2,height/2,414,414);
  // venus' orbit
  fill(255);
  ellipse(width/2,height/2,333,333);
  fill(0);
  ellipse(width/2,height/2,331,331);
  // mercury's orbit
  fill(255);
  ellipse(width/2,height/2,271,271);
  fill(0);
  ellipse(width/2,height/2,269,269);
  lights();
*/

lights();

  // sun
  pushMatrix();
  rotateZ(0);
  translate(width/2,height/2);
  sun.draw();

  // mercury
  pushMatrix();
  rotateZ(frameCount/87.9);
  translate (0, 135, 0);
  mercury.draw();
  popMatrix();

  // venus
  pushMatrix();
  rotateZ(frameCount/224.6);
  translate (0, 164, 0);
  venus.draw();
  popMatrix();

  // earth
  pushMatrix();
  rotateZ(frameCount/365.2);
  translate (0, 205, 0);
  earth.draw();

  // e=moon
  pushMatrix();
  rotateZ(frameCount/65.3);
  translate (0, 20, 0);
  moon.draw();
  popMatrix();
  popMatrix();

  // mars
  pushMatrix();
  rotateZ(frameCount/686.9);
  translate(0,245,0);
  mars.draw();

  // m=moon
  pushMatrix();
  rotateZ(frameCount/65.3);
  translate (0, 20, 0);
  moon.draw();
  popMatrix();
  popMatrix();

  // jupitor
  pushMatrix();
  rotateZ(frameCount/111.5);
  translate(0,268,0);
  jupiter.draw();

  // j=moon
  pushMatrix();
  rotateZ(frameCount/65.3);
  translate (0, 20, 0);
  moon.draw();
  popMatrix();
  popMatrix();

  // saturn
  pushMatrix();
  rotateZ(frameCount/120.1);
  translate(0,333,0);
  saturn.draw();

  // s=moon
  pushMatrix();
  rotateZ(frameCount/65.3);
  translate (0, 28, 0);
  moon.draw(); 
  popMatrix();
  popMatrix();
  
  // uranus
  pushMatrix();
  rotateZ(frameCount/306.601);
  translate(0,440,0);
  uranus.draw();
  popMatrix();   

  // neptune
  pushMatrix();
  rotateZ(frameCount/601.521);
  translate(0,500,0);
  neptune.draw();
  popMatrix();

  // pluto
  pushMatrix();
  rotateZ(frameCount/555.5); //904105
  translate(0,550,0);
  pluto.draw();
  
  // p=moon
  pushMatrix();
  rotateZ(frameCount/65.3);
  translate (0, 15, 0);
  moon.draw();
  popMatrix();
  popMatrix();
  
  popMatrix();
}






/*

 //to find x,y cordinates
 void mousePressed()
 {
 println(mouseX + " " + mouseY);
 }
 */
