class Point {
  float x, y;

  Point(float x, float y) {
    this.x =x;
    this.y = y;
  }

  Point() {
    x = 0;
    y = 0;      //构造函数重载
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
