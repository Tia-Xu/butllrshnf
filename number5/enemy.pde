PImage Enemy;

class Enemy extends GameObject {

  int cooldown, threshold;
  //CONSTRUCTOR
  Enemy() {
    super(random(width), -20, 0, 5, 40, #FFFF00, 1);
    threshold=50;
    cooldown=threshold;
    Enemy=loadImage("enemy1.png");
  }

  void act() {
    super.act();
    //collisions

    int i=0;
    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingwith(obj)) {
          lives--;
          score++;
          if (lives==0) {
            //PARTICLES
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
    //shoot 
    cooldown++;
    if (cooldown>=threshold) {
      objects.add(new EnemyBullet(x, y, 0, 10));
      cooldown=0;
    }

    //remove if off screen
    if (offScreen()) lives=0;
  }
  void show() {
    //super.show();
    image(Enemy, x, y);
  }
}
