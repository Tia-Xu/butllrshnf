 void pause() {
 //PAUSE BUTTON
 theme.pause();
   fill(0);
  rect(1250,50,50,50);
  stroke(255,0,0);
  line(1240,35,1240,65);
  line(1260,35,1260,65);
  //MID
  triangle(width/2-35,250,width/2-35,350,width/2+50,300);
  
  
}

    void pauseClicks(){
       if (dist(mouseX, mouseY, 1250,50 )<50){
   mode=GAME;
    
   
    }
    }
