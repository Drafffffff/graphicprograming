
void drawA() {
  noStroke();
  background(0);
  //R
  pushMatrix();
  //1
  translate(-150, -150, 150);
  rect(0, 0, 150, 150);

  //2
  fill(255);
  translate(150, 0, 0);
  rect(0, 0, 150, 150);
  noFill();
  //3
  fill(255);
  translate(0, 150, 0);
  rect(0, 0, 150, 150);
  noFill();
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
  fill(255);
  translate(-150, -150, -150);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( 0, 150, 150);
  vertex(0, 150, 0);
  endShape(CLOSE);
  noFill();

  //2
  translate(0, 0, 150);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( 0, 150, 150);
  vertex(0, 150, 0);
  endShape(CLOSE);

  //3
  fill(255);
  translate(0, 150, 0);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( 0, 150, 150);
  vertex(0, 150, 0);
  endShape(CLOSE);
  noFill();
  //4
  fill(255);
  translate(0, 0, -150);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( 0, 150, 150);
  vertex(0, 150, 0);
  endShape(CLOSE);
  noFill();
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
  fill(255);
  translate(0, 0, 150);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( -150, 0, 150);
  vertex(-150, 0, 0);
  endShape(CLOSE);
  noFill();
  //3
  translate( -150, 0, 0);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( -150, 0, 150);
  vertex(-150, 0, 0);
  endShape(CLOSE);
  //4
  fill(255);
  translate(0, 0, -150);
  beginShape();
  vertex(0, 0, 0);
  vertex( 0, 0, 150);
  vertex( -150, 0, 150);
  vertex(-150, 0, 0);
  endShape(CLOSE);
  noFill();
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
