float anglee = 0;

void setup() {
  size(600, 600, P3D);
  stroke(220);
  strokeWeight(3);
  noFill();
  background(0);
  //rectMode(CENTER);
}

void draw() {
  background(0);
  ortho();
  translate(width/2, height/2, 0);
  rotateX(map(mouseX,0,width,0,2*PI)); 
  rotateY(map(mouseY,0,height,0,2*PI));

  //box(300);
  
  stroke(7, 130, 225);
  point(0, 0);
  stroke(255, 57, 49);
  ellipse(0, 0, 30, 30);
  stroke(255, 78, 67);
  ellipse(0, 0, 60, 60);
  stroke(255, 92, 78);
  ellipse(0, 0, 90, 90);
  stroke(255, 120, 92);
  ellipse(0, 0, 120, 120);
  stroke(255);
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
  
  
  anglee+=0.005;
}
