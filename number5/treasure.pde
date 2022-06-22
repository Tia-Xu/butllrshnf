
//IMAGE 
PImage c1;
PImage c2;
PImage c3;
class treasure extends GameObject {
  //COMSTRUCTOR
  treasure() {
    super(random(width), -20, 0, 5, 40, #FFFF00, 3);
    c1=loadImage("chest1.png");
    c2=loadImage("chest2.png");
    c3=loadImage("chest3.png");
  }
  void act() {
    super.act();
    //collisions
    //CHANGE IF LIVES--
    int i=0;
    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingwith(obj)) {
          lives--;
        }
        if (lives==3) {
          image(c1, x, y);
        }


        if (lives==2) {
          image(c2, x, y);
        }

        if (lives==1) {
          image(c3, x, y);
        }
        //LIVES++ WITH POWERUP SCORE EXTRA AND PARTICLES
        if (lives==0) {
          score=score+5;
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

      i++ ;
    }


    //remove if off screen
    if (offScreen()) lives=0;
    //ADD A PARICKE
    if (lives==0) {
      objects.add(new powerup1(x, y));
    }
  }



  void show() {
    // super.show();
    //3 IMAGES
    if (lives==3) {
      image(c1, x, y);
    }
    if (lives==2) {
      image(c2, x, y);
    }
    if (lives==1) {
      image(c3, x, y);
    }
  }
}
