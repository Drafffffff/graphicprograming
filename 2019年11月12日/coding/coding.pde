void setup() {
  size(600, 600);
  background(0);
  float lens= 600;
  float angle = PI/8;
  translate(width/2, height);
  for (int i=0; i<10000; i++) {
    resetMatrix();
    long n=500;
    int steps= 0;
    int n =i ;
    do {
      n = collatz(n);
      if (n%2==0) {
        rotate(angle);
      } else {
        rotate(-angle);
      }
      stroke(255);
      line(0, 0, 0, -lens);
      translate(0, -lens);
      steps++;
    } while (n!=1);
    println("steps: "+steps);
  }
}

void draw() {
}

long collatz(long n ) {
  if (n%2 == 0) {
    return n/2;
    //odd
  } else {
    return n*3+1;
  }
}
