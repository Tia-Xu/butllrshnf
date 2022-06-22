PImage enemy31;
class enemy3 extends GameObject {
  int threshold, cooldown;
  //COMSTRUCTOR

  enemy3() {
    super(random(width), -25, 0, 5, 50, #00FFFF, 1);
    threshold=30;
    cooldown=threshold;
    enemy31=loadImage("enemy3.png");
  }
  void act() {
    super.act();
    //shoot
    cooldown++;
    if (cooldown>=threshold) {
      if (player1.x>x) {

        //SWITCH SIDE SHOOT

        objects.add(new Enemy3Bullet(x, y, 10, 0));
        cooldown=0;
      } else {
        objects.add(new Enemy3Bullet(x, y, -10, 0));
        cooldown=0;
      }
    }
    //collisions

    int i=0;
    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingwith (obj)) {
          lives--;
          score++;

          if (lives==0) {
            //PARTICLS
            objects.add(new EnemyParticles(x, y, 0, 5, c));
            objects.add(new EnemyParticles(x, y, 5, 0, c));
            objects.add(new EnemyParticles(x, y, 0, -5, c));
            objects.add(new EnemyParticles(x, y, -5, 10, c));
            objects.add(new EnemyParticles(x, y, 0, 10, c));
            objects.add(new EnemyParticles(x, y, 10, 0, c));
            objects.add(new EnemyParticles(x, y, 0, -10, c));
            objects.add(new EnemyParticles(x, y, -10, 10, c));
            objects.add(new EnemyParticles(x, y, -10, -10, c));
            objects.add(new EnemyParticles(x, y, -5, 5, c));
            objects.add(new EnemyParticles(x, y, -10, -5, c));
            objects.add(new EnemyParticles(x, y, -5, 10, c));
          }
        }
      }
      i++ ;
    }


    //remove if off screen
    if (offScreen()) lives=0;
  }

  void show() {
    //super.show();
    image(enemy31, x, y);
  }
}
