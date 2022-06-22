//FONTS
PFont intr;
PFont cov1;
PFont sec;
PImage icon;
PImage cl;
PImage sett;
PImage col;
PImage sho;
void intro() {
  gaymover.pause();
  intro.play();
  background(#b08968);
  fill(255);
  counter=counter+1;
  sett=loadImage("download.png");
  col=loadImage("images.png");
  sho=loadImage("download-1.png");

  //text for title
  intr=createFont("Checkpoint Charlie.ttf", 150);
  textFont(intr);
  text("OPERATION", width/5, height/2);
  cov1=createFont("Riwaya.ttf", 175);
  textFont(cov1);
  //hsrd easy

  tactile(100, 550, 50, 25);
  rect(100, 550, 100, 50, 20 );
  tactile(400, 550, 50, 25);
  rect(400, 550, 100, 50, 20);
  textSize(30);
  fill(0);
  text("easy", 75, 560);
  text("hard", 375, 560);
  fill(255);
  textSize(0);

  //help
  fill(255);
  tactile(1250, 50, 50, 25);
  rect(1250, 50, 50, 50);
  image(sett, 1250, 50);

  //alien text 
  pushMatrix();
  rotate(50);
  fill(0);
  textSize(150);

  // fill(#023047);
  if (counter<20) {
    text("ALIEN INVASION", width/2-300, height-50);
  } else if (counter>=30) {
    counter=0;
  }


  //images
  enemy31=loadImage("enemy3.png");
  image(enemy31, 50, 500);
  Enemy2=loadImage("enemy2.png");
  image(Enemy2, 900, 450);
  self=loadImage("upgrade2.png");
  image(self, 1000, 800);

  popMatrix();
  sec=createFont("old_stamper.ttf", 50);
  fill(#E31717);
  textFont(sec);
  text("Click to play", 500, 150);

  //stamp
  cl=loadImage("classi.png");
  image(cl, 50, 100);

  //RESET
  reset();
  textSize(15);
  //SCORE 
  fill(255);
  text("HIGHSCORE:"+highscore, width/2-100, height-350);

  //shop
  stroke(0);
  fill(255);
  tactile(1250, 150, 50, 25);
  rect(1250, 150, 50, 50);
  image(sho, 1250, 150);

  // color
  tactile(1250, 250, 50, 25);
  stroke(0);
  fill(255);
  rect(1250, 250, 50, 50);
  image(col, 1250, 250);
 
}

void introClicks() {

  if (dist(mouseX, mouseY, 1250, 150)<50) {

    mode=SHOP;
  }
  if (dist(mouseX, mouseY, 1250, 250)<50) {

    mode=COOLR;
  }

  if (mouseX> 375 && mouseX<425 && mouseY>525 && mouseY<575) {
    mode=GAME;
    AI=false;
  }
  if (mouseX>75 && mouseX<150 && mouseY>525 && mouseY<575) {
    mode=GAME;
    AI=true;
  }
  if (mouseX>1225 && mouseX<1275 && mouseY>25 && mouseY<75) {  
    mode=HELP;
  }
}
