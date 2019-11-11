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
  long n=1221230;
  int steps= 0;
  do {
    println(n);
    n=collatz(n);
    steps++;
  } while (n!=1);
  println("steps: "+steps);
}

public void draw() {
}

public long collatz(long n ) {
  if (n%2 == 0) {
    return n/2;
    //odd
  } else {
    return n*3+1;
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "coding" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
