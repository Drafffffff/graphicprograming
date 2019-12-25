class Line {
  Point p1, p2;
  Line(Point p1, Point p2) {
    this.p1 = p1;
    this.p2 = p2;
  }

  float length() {
    return p1.distance(p2);
  }
}


class VisualLine extends Line {
  float w;
  color c;

  VisualLine(Point p1, Point p2, float w, color c) {
    super(p1, p2);
    this.w = w;
    this.c = c;
  }

  VisualLine(Point p1, Point p2) {
    super(p1, p2);
    this.w = 1 ;
    this.c = color(0);
  }

  void setWeight(float w) {
    this.w = w;
  }
  void setColor(color c) {
    this.c =c;
  }
  void display() {
    stroke(c);
    strokeWeight(w);
    line(p1.x, p1.y, p2.x, p2.y);
  }
}


float[] progression(int n, float q) {
  float[] result = new float[n];
  result[0] = 1;
  for (int i =1; i<n; i++) {
    result[i] = result[i-1]*q;
  }
  return result;
}
