class Particle {
  PVector pos;
  float step;
  float lifeSpan;
  color col;
  float angle;
  float noiseScale, noiseStrength;
  Particle(float x, float y, color col) {
    pos = new PVector(x, y);
    step = 0.9;
    angle = random(10);
    lifeSpan = 100;
    noiseScale = 800;
    noiseStrength = 90;
    this.col = col;
  }

  void show() {
    noStroke();
    fill(col, lifeSpan);
    circle(pos.x, pos.y, 0.5);
  }

  void move() {
    angle = noise(pos.x/noiseScale, pos.y/noiseScale)*noiseStrength;
    pos.x += cos(angle) *step;
    pos.y += sin(angle)*step;
    lifeSpan -= 0.1;
  }

  boolean isDead() {
    if (lifeSpan <0.0) {
      return true;
    } else {
      return false;
    }
  }
 
  void run(){
  show();
  move();
  }
  
  
}
