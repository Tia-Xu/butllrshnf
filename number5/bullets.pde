class Bullet extends GameObject {

  //CONSTRUCTOR UR OWN BULLY

  Bullet(float x, float y) {
  
    super(x, y, 0, -10, 5, selectedcolor, 1);
    
  }

  void act() {
    super.act();



    if (offScreen()) lives=0;
  }


  void show() {
    super.show();
  }
}
