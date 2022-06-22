//IMAGES
PImage Gameover;
PImage crsh;


void gameover() {
 
  //background
   Gameover=loadImage("gover.jpg"); 
  image(Gameover, width/2, height/2, width, height);

  
  
  theme.pause();
 // ushot.pause();
  gaymover.play();
 
  
  //exit
  fill(0);
  rect(600, 50, 100, 50);

  //text
  fill(255);
  textSize(15);
  fill(255);
  text("PLAY AGAIN:  PRESS ANYWHERE TO RESPAWN", 600, 600);
  textSize(20);
  text("EXIT", 577, 57);
  text("HIGHSCORE:"+highscore, 150, 50);
  text("COIN balance:"+bank,950,50);
  //HIGHSCORE

  if (score>highscore) {
    highscore=score;
  }
 
 
 
 
 
  bank=coins+newcoins;

}


void gameoverClicks() {

  if (mouseX>550 && mouseX<650 && mouseY>25 && mouseY<75) {
    exit();
  } else {
    mode=INTRO;
      intro.rewind();
  }
}
