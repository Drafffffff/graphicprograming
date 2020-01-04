void setup() {
  size(840, 840);
  pixelDensity(2);
  noLoop();
}

void draw() {
  background(255);
  waves();
  //tile(0, 0, width);
}
void waves() {
  strokeWeight(2);
  for (float y = 0; y<height*2; y+=100) {
    color c1 = getCol(), c2 = getCol();
    for (float x = 0; x<=width; x+=1) {
      color col = lerpColor(c1,c2,x/width);
      stroke(col);
      line(x,height,x,y*noise(x*0.001,y*0.0005));
    }
  }
}

void tile(float x_, float y_, float w_) {
  
  
  
}
int[] colors = {#0c090d, #e07491, #f2897b, #f9d87c, #6ab8cc, #F9BD7C};
int getCol() {
  return colors[(int)random(colors.length)];
}
