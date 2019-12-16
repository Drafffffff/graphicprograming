int circle = 8;
float cirGap = 2*PI/circle;
float r = 10;
float dt = 20;
float t = 0;

void setup() {
  size(500, 500);
  //ellipseMode(CENTER);
}

void  draw() {

  float pos = sin(t)*9;
  println(pos);
  background(40);
  translate(width/2, height/2);
  //noStroke();
  for (float angle = 0; angle<=PI*2; angle+=cirGap) {
    for (float i = 1; i<=8; i+=1) {
      ellipse(cos(angle)*(r+pos)*i, sin(angle)*(r+pos)*i, 
        20+(8-i)*7, 20+(8-i)*7);
    }
  }
  t+=0.05;
}
