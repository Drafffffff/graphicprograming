import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class coding extends PApplet {


public void setup() {
  
  background(0);
  translate(0, height/2);
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
    for (int  j =0; j<sequence.size(); j++) {
      int value = sequence.get(j);
      if (value%2==0) {
        rotate(-angle);
      } else {
        rotate(angle);
      }
      stroke(255,50);
      line(0, 0, lens, 0);
      translate(lens, 0);
    }
  }

  println("finished");
}

public void draw() {
}

public int collatz(int n ) {
  if (n%2 == 0) {
    return n/2;
    //odd
  } else {
    return (n*3+1)/2;
  }
}
  public void settings() {  size(1200, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "coding" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
