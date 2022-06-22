
PImage Enemy2;
//CONSTRUCTOR
class enemy2 extends GameObject {
  enemy2() {
    super(width-30, random(0, height), -5, 0, 75, #FF00FF, 1);
    Enemy2=loadImage("enemy2.png");
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

          //PARTICLES
          if (lives==0) {
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
      // super.show();
      image(Enemy2, x, y);
    }
  }
