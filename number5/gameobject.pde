class GameObject {
  //VARIABLES
  float x, y, vx, vy, size;
  int hp, lives;
  color c;

  //  CONSTRUCTOR
  GameObject(float x, float y, float vx, float vy, float size, color c, int lives) {
    this.x=x;
    this.y=y;
    this.vx=vx;
    this.vy=vy;
    this.size=size;
    this.c=c;
    this.lives=lives;
  }

  void act() {
    x=x+vx;
    y=y+vy;
  }


  void show() {
    fill(c);
    stroke(c);
    square(x, y, size);
  }


  //COLLISON
  boolean collidingwith(GameObject obj) {
    return (dist(obj.x, obj.y, x, y)<obj.size/2+size/2);
  }

  //OFFSCREEN
  boolean offScreen() {
    return (x<0||x>width||y<-50||y>height);
  }
}   
