Particle current;
ArrayList<Particle> snowflake;
float rAngle= 0;
boolean flag = true;
void setup() {
  size(600, 600);
  //background(0);
  current = new  Particle(width/2, 0);
  snowflake = new ArrayList<Particle>();
}


void draw() {
  translate(width/2, height/2);
  rotate(rAngle);
  background(0);
  current.update();


  while (!current.finished() && !current.intersects(snowflake)) {
    current.update();
  }


  if (snowflake.size()<2) {
    snowflake.add(current);
    current = new Particle(width/2, 0);
  } else {
    if (snowflake.get(snowflake.size()-1).pos.x != snowflake.get(snowflake.size()-2).pos.x&&
      snowflake.get(snowflake.size()-1).pos.y != snowflake.get(snowflake.size()-2).pos.y
      ) {
        print('1');
      snowflake.add(current);
      current = new Particle(width/2, 0);
    }
  }


  for (int i =0; i<6; i++) {
    rotate(PI/3);
    for (Particle p : snowflake) {
      p.show();
    }
    pushMatrix();
    scale(1, -1);
    for (Particle p : snowflake) {
      p.show();
    }
    popMatrix();
  }
  rAngle += 0.002;
}
