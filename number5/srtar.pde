class Star extends GameObject{
 
  
  //constructor
  
  Star(){
    super(random(width),0,0,0,random(1,3),#FFFFFF,1);
    
  }
  
  //behabvior functions
  
  void act(){
    
    y=y+vy+3;
    if(y>height){
       lives=0;
      
    }
    super.act();
  }


 
}
