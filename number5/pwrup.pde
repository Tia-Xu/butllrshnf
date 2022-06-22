PImage power;

class powerup1 extends GameObject{
  //CONSTRUCTOR
  powerup1(float x, float y){
   super(x,y,0,0,10,#00FF00,1);
   power=loadImage("power.png");
  }
  
  
  void act(){
   super.act();
   
}
void show(){
  //super.show();
  image(power,x,y);
  
}
}
