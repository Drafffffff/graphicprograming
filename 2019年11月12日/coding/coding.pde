void setup() {
  size(600, 600);
  background(0);
  translate(width/2, height);
  for (int i=1; i<10000; i++) {
    IntList sequence = new IntList();
    int n = i ;
    do {
      sequence.append(n);
      n = collatz(n);
    } while (n!=1);
    sequence.append(1);
    sequence.reverse();
   
    float lens= 10;
    float angle = PI/12;
    resetMatrix();
    translate(width/2, height/2);
    for (int j =0; j<sequence.size(); j++) {
      int value = sequence.get(j);
      if (value%2==0) {
        rotate(angle);
      } else {
        rotate(-angle);
      }
      stroke(255);
      line(0, 0, 0, -lens);
      translate(0, -lens);
    }
  }

  println("finished");
}

void draw() {
}

int collatz(int n ) {
  if (n%2 == 0) {
    return n/2;
    //odd
  } else {
    return n*3+1;
  }
}
