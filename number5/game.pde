
//FONT
PFont ut;

void game() {
  theme.play();
  //objects
  addObj();
  gameEng();
  debug();

  //trans
  fill(0, 100);
  rect(width/2, height/2, width, height);

  //background(0);
  fill(0);

  //pause button
  stroke(255, 0, 0);
  rect(1250, 50, 50, 50);
  triangle(1240, 35, 1240, 65, 1265, 48);
  stroke(255);

  //font
  ut=createFont("Coffee for Breakfast.ttf", 10);
}
//ADDING OBJECTS TO SCREEN
void addObj() {
  objects.add(0, new Star());
  if(AI==true){
  if (frameCount%50==0) objects.add(new Enemy());
  if (frameCount%85==0) objects.add(new enemy2());
  if (frameCount%60==0) objects.add(new enemy3());
  if (frameCount%95==0) objects.add(new treasure());
} else if(AI==false){
  if (frameCount%10==0) objects.add(new Enemy());
  if (frameCount%20==0) objects.add(new enemy2());
  if (frameCount%25==0) objects.add(new enemy3());
  if (frameCount%99==0) objects.add(new treasure());
}
}

// GAME ENGIN WORK
void gameEng() {
  int i=0;
  while (i<objects.size()) {
    GameObject obj=objects.get(i);
    obj.act();
    obj.show();
    if (obj.lives==0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
}
//DEBUG SHOW TIMES
void debug() {
  //fill(255);
  //text(frameRate, 20, 20);
  //text(objects.size(), 20, 40);
  textSize(15);
  fill(255);
  text("lives", 20, 50);
  text(player1.lives+live, 100, 50);
  text("score", 20, 75);
  text(score, 100, 75);
  newcoins=score;
  coins=bank;
}

void gameClicks() {
  if (dist(mouseX, mouseY, 1250, 50 )<50) {
    mode=PAUSE;
  }
}
