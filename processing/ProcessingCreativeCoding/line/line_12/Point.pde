class Point {
  float x, y;

  void rotate(Point p,float a){
    float dx = x-p.x;
    float dy = y-p.y;
    x = p.x+cos(a)*dx-sin(a)*dy;
    y = p.y+sin(a)*dx+cos(a)*dy;
  
  }

  float distance(Point p) {
    float dx = x-p.x;
    float dy = y-p.y;
    return sqrt(dx*dx+dy*dy);
  }
  Point(float x, float y) {
    this.x =x;
    this.y = y;
  }

  Point() {
    x = 0;
    y = 0;      //构造函数重载
  }
  Point lerp(Point p,float t){
    return new Point(x+(p.x-x)*t,y+(p.y-y)*t);
  }
  
  Point copy() {
    return new Point(x, y);
  }
}





class VisualPoint extends Point {
  float w;
  color c;

  VisualPoint(float x, float y, float w, color c) {
    super(x, y);
    this.w= w;
    this.c = c;
  }


  void display() {
    stroke(c);
    strokeWeight(w);
    point(x, y);
  }
}
