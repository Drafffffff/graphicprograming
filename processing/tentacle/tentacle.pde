int circle = 8;
float cirGap = 2*PI/8;
float r = 80;


void setup() {
  size(500, 500);
  translate(width/2, height/2);

  for (float angle = 0; angle<=PI*2; angle+=cirGap) {
    ellipse(cos(angle)*r, sin(angle)*r, 60, 60);
  }
}

void draw() {
}
