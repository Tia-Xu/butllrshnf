class PParticles extends GameObject{
 //CONS die
  
  PParticles(float x,float y, float vx,float vy,color c){
    super(x,y,random(vx-5),random(vy-5),2,c,10);
    
  }
  
  void act(){
    
    super.act();
   if (offScreen()) lives=0;
 
}
}
