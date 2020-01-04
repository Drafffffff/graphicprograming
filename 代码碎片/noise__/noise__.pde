 int xoff = 0; 
 int yoff=0;
float inc = 1;
void setup() {
  size(400, 400);
  background(51);
}
void draw() {
  background(51);
  translate(width/2, height/2);
  stroke(255,90);
  noFill();
  float r = 200;
  ellipse(0,0,400,400);
  fill(255);
  ellipse(0,0,20,20);
  for (int y = 0; y<height; y+=4) {
    
    for (int x = 0; x<width; x+=4) {
      //float noi = random(1)*TWO_PI*2;
      float noi = noise(xoff, yoff)*TWO_PI*2;
      //stroke(noi*255/TWO_PI/2);
      point(cos(noi)*r, sin(noi)*r);

      //r= constrain(r,10,100);
      xoff+=inc;
    }
    r-=2;
    yoff +=inc;
    r= constrain(r, 10, 200);
  }
  //noLoop();
}
