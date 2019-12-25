void setup() {
  size(600, 600, P3D);
  stroke(220);
  strokeWeight(3);
  noFill();
  background(0);
  //rectMode(CENTER);
}

void draw() {
  rotateN();
  //normal();
}


void rotateN() {
  background(0);
  ortho();
  translate(width/2, height/2, 0);
  float hh = -height;
  float ww = -width;
  float rotateXXX = map(mouseY, hh, 0, 0, 2*PI);
  float rotateYYY =map(mouseX, ww, 0, 0, 2*PI);
  print("x: ");
  println(rotateXXX%PI);
  print("y: ");
  println(rotateYYY%PI);
  rotateX(rotateXXX); 
  rotateY(rotateYYY);

  //box(300);
  drawA();
}


void normal() {
  ortho();
  translate(width/2, height/2, 0);
  rotateX(-PI/6); 
  rotateY(PI/3); 
  box(300);
  point(0, 0);
  drawMain();
}

void drawMain() {

  //R
  pushMatrix();
  //1
  translate(-150, -150, 150);
  rect(0, 0, 150, 150);

  //2
  translate(150, 0, 0);
  rect(0, 0, 150, 150);

  //3
  translate(0, 150, 0);
  rect(0, 0, 150, 150);

  //4
  translate(-150, 0, 0);
  rect(0, 0, 150, 150);

  popMatrix();


  //L
  pushMatrix();
  //1
  translate(-150, -150, -150);
  rect(0, 0, 150, 150);

  //2
  translate(150, 0, 0);
  rect(0, 0, 150, 150);

  //3
  translate(0, 150, 0);
  rect(0, 0, 150, 150);

  //4
  translate(-150, 0, 0);
  rect(0, 0, 150, 150);

  popMatrix();


  //B
  pushMatrix();
  //1
  translate(150, -150, -150);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( 0, 150, 150);
  vertex(0, 150, 0);
  endShape(CLOSE);

  //2
  translate(0, 0, 150);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( 0, 150, 150);
  vertex(0, 150, 0);
  endShape(CLOSE);

  //3
  translate(0, 150, 0);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( 0, 150, 150);
  vertex(0, 150, 0);
  endShape(CLOSE);

  //4
  translate(0, 0, -150);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( 0, 150, 150);
  vertex(0, 150, 0);
  endShape(CLOSE);

  popMatrix();




  //F
  pushMatrix();
  //1
  translate(-150, -150, -150);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( 0, 150, 150);
  vertex(0, 150, 0);
  endShape(CLOSE);

  //2
  translate(0, 0, 150);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( 0, 150, 150);
  vertex(0, 150, 0);
  endShape(CLOSE);

  //3
  translate(0, 150, 0);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( 0, 150, 150);
  vertex(0, 150, 0);
  endShape(CLOSE);

  //4
  translate(0, 0, -150);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( 0, 150, 150);
  vertex(0, 150, 0);
  endShape(CLOSE);

  popMatrix();


  //T
  pushMatrix();
  //1
  translate(150, -150, -150);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( -150, 0, 150);
  vertex(-150, 0, 0);
  endShape(CLOSE);
  //2
  translate(0, 0, 150);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( -150, 0, 150);
  vertex(-150, 0, 0);
  endShape(CLOSE);
  //3
  translate( -150, 0, 0);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( -150, 0, 150);
  vertex(-150, 0, 0);
  endShape(CLOSE);
  //4
  translate(0, 0, -150);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( -150, 0, 150);
  vertex(-150, 0, 0);
  endShape(CLOSE);
  popMatrix();



  //BT
  pushMatrix();
  //1
  translate(150, 150, -150);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( -150, 0, 150);
  vertex(-150, 0, 0);
  endShape(CLOSE);
  //2
  translate(0, 0, 150);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( -150, 0, 150);
  vertex(-150, 0, 0);
  endShape(CLOSE);
  //3
  translate( -150, 0, 0);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( -150, 0, 150);
  vertex(-150, 0, 0);
  endShape(CLOSE);
  //4
  translate(0, 0, -150);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( -150, 0, 150);
  vertex(-150, 0, 0);
  endShape(CLOSE);
  popMatrix();
}
