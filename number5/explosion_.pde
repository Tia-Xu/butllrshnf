class EnemyParticles extends GameObject {

  //CONS
  EnemyParticles(float x, float y, float vx, float vy, color c) {
    super(x, y, random(-10,10), random(-10,10), 3, c, 10);
  }

  void act() {

    super.act();
    // die
   timer=timer-1;
    if (timer<0) {
      lives=0;
      timer=20;
    }
  }
  void show() {
    super.show();
  }
}
