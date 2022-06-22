PImage self;

class Starfighter extends GameObject {
  //VARIABLES FOR GUN MODE
  final int START=1;
  final int ONEP = 2;
  final int SP=3;
  final int SP1=4;

  int gunmode=START;
  //OTHER VARIABLES
  int cooldown, threshold;
  int ptimer;

  //CONSTRUCTOR
  Starfighter() {
    super(width/2, height/2, 0, 0, 60, #FF0000, 5);
    threshold=10;
    cooldown=threshold;
    ptimer=0;
    self=loadImage("upgrade2.png");
  }

  void act() {
    super.act();


    //move
    if (wkey==true)y=y-5;
    if (akey==true)x=x-5;
    if (dkey==true)x=x+5;
    if (skey==true)y=y+5;
    // if(spacekey==true) objects.add(new Bullet());
    //edge
    if (x<0) x=0;
    if (x>width)x=width;
    if (y<0) y=0;
    if (y>height)y=height;

    // gun upgrade
    if (score>=100) {
      gunmode=SP;
    }


    //decelarate
    if (!wkey &&!skey) vy=vy*0.9;
    if (!akey &&!dkey)vx=vx*0.9;
    x+=vx;
    y+=vy;

    //collision WITH EME1
    int i=0;
    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (obj instanceof EnemyBullet) {
        if (collidingwith(obj)) {
          lives--;
          obj.lives=0;
          fill(255, 0, 0);
          rect(width/2, height/2, width, height);
        }
      }
      i++ ;
    }
    //eme2
    int n=0;
    while (n<objects.size()) {
      GameObject obj=objects.get(n);
      if (obj instanceof enemy2) {
        if (collidingwith(obj)) {
          lives--;
          obj.lives=0;
          fill(255, 0, 0);
          rect(width/2, height/2, width, height);
        }
      }
      n++ ;
    }
    //eme3
    int u=0;
    while (u<objects.size()) {
      GameObject obj=objects.get(u);
      if (obj instanceof Enemy3Bullet) {
        if (collidingwith(obj)) {
          lives--;
          obj.lives=0;  
          fill(255, 0, 0);
          rect(width/2, height/2, width, height);
        }
      }
      u++ ;
    }
    //pwrup
    int w=0;
    while (w<objects.size()) {
      GameObject obj=objects.get(w);
      if (obj instanceof powerup1) {
        if (collidingwith(obj)) {
          fill(255);
          rect(width/2, height/2, width, height);
          if (gunmode==START) {
            gunmode=ONEP;
          } else if (gunmode==SP) {
            gunmode=SP1;
          }
          obj.lives = 0;
        }
      }
      w++ ;
    }
    //PARTICLES
    if (lives==0) {
      objects.add(new PParticles(x, y, 0, 5, c));
      objects.add(new PParticles(x, y, 5, 0, c));
      objects.add(new PParticles(x, y, 0, -5, c));
      objects.add(new PParticles(x, y, -5, 10, c));
      objects.add(new PParticles(x, y, 0, 10, c));
      objects.add(new PParticles(x, y, 10, 0, c));
      objects.add(new PParticles(x, y, 0, -10, c));
      objects.add(new PParticles(x, y, -10, 10, c));
    }
  }
  void show() {
    //super.show();
    image(self, x, y);
    // END GAME
    if (lives==0) {
      mode=GAMEOVER;
    }
    //GUNMODE 
    if (gunmode==START)        s();
    else if (gunmode==ONEP)    op();
    else if (gunmode==SP)    sp();
    else if (gunmode==SP1)    sp4();
  }



  void s() {
    //gun
    cooldown++;
    if (spacekey&& cooldown>=threshold) {
      objects.add(new Bullet(player1.x, player1.y));
      cooldown=0;
    }
  }
  void op() {
    //TWO GUN
    cooldown++;
    if (spacekey&& cooldown>=threshold) {
      Bullet b1 = new Bullet(player1.x-15, player1.y);
      Bullet b2 = new Bullet(player1.x+15, player1.y);
      objects.add(b1);
      objects.add(b2);
      cooldown=0; 
      ptimer++;
      //ushot.play();
      if (ptimer==10) {
        gunmode=START;
        ptimer=0;
      }
    }
  }

  void sp() {
    cooldown++;
    if (spacekey&& cooldown>=threshold) {
      Bullet b1 = new Bullet(player1.x-15, player1.y);
      Bullet b2 = new Bullet(player1.x+15, player1.y);
      Bullet b3 = new Bullet(player1.x, player1.y);
      objects.add(b1);
      objects.add(b2);
      objects.add(b3);
     // ushot.play();
      cooldown=0;
    }
  }
  void sp4() {
    cooldown++;
    threshold=5;
    if (spacekey&& cooldown>=threshold) {
      Bullet b1 = new Bullet(player1.x-15, player1.y);
      Bullet b2 = new Bullet(player1.x+15, player1.y);
      Bullet b3 = new Bullet(player1.x, player1.y);
      objects.add(b1);
      objects.add(b2);
      objects.add(b3);
      cooldown=0; 
     // ushot.play();
      if (ptimer==10) {
        gunmode=SP;
        ptimer=0;
      }
    }
  }
}
