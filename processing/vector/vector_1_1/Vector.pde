class Vector {
  float x, y;
  Vector(float x, float y) {
    this.x = x;
    this.y = y;
  }

  Vector() {
    this.x = 0;
    this.y = 0;
  }

  Vector copy() {
    return new Vector(x, y);
  }

  float mag() {
    return sqrt(x*x+y*y);
  }
  
  float heading(){
    return atan2(x,y);
  }
  
  Vector add(Vector v){
    return new Vector(x+v.x,y+v.y);
  }
  
  Vector add(float x,float y){
    return new Vector (this.x+x,this.y+y);
  }
  
  Vector sub(Vector v){
    return new Vector(x-v.x,y-v.y);
  }
  
  
  
}
