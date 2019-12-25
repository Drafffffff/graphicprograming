Particle current;
ArrayList<Particle> snowflake;

void setup() {
  size(600, 600);
  current = new Particle(width/2, 0);
  snowflake = new ArrayList<Particle>();
}

void draw() {
  translate(width/2, height/2);
  background(0);
  while (!current.finished()&&!current.intersect(snowflake)) {
    current.update();
  } 
  
  if (snowflake.size()<2) {
    snowflake.add(current);
    current = new Particle(width/2, 0);
  } else {
    if (snowflake.get(snowflake.size()-1).pos.x != snowflake.get(snowflake.size()-2).pos.x&&
      snowflake.get(snowflake.size()-1).pos.y != snowflake.get(snowflake.size()-2).pos.y
      ) {
      snowflake.add(current);
      current = new Particle(width/2, 0);
    }
  }
  
  for (int i = 0; i<6; i++) {
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
}
