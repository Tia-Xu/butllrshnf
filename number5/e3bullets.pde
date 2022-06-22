class Enemy3Bullet extends GameObject {
  //CONS

  Enemy3Bullet(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 10, #FFFF00, 1);
  }


  void act() {
    super.act();
    if (offScreen()) lives=0;
  }

  void show() {
    super.show();
  }
}
