void mousePressed() {
  if (mode==INTRO) {
    introClicks();
  } else if (mode==GAME) {
    gameClicks();
  } else if (mode==PAUSE) {
    pauseClicks();
  } else if (mode==GAMEOVER) {
    gameoverClicks();
  } else if (mode==SHOP) {
    shopClicks();
  } else if (mode==HELP) {
    helpClicks();
  } else if (mode==COOLR) {
    coolrClicks();
  } else println("unhandled click");
}
void keyPressed() {
  if (key=='w'||key=='W') wkey=true;
  if (key=='a'||key=='A') akey=true;
  if (key=='s'||key=='S') skey=true;
  if (key=='d'||key=='D') dkey=true;
  if (key==' ') spacekey=true;
}

void keyReleased() {
  if (key=='w'||key=='W') wkey=false;
  if (key=='a'||key=='A') akey=false;
  if (key=='s'||key=='S') skey=false;
  if (key=='d'||key=='D') dkey=false;
  if (key==' ') spacekey=false;
}

void reset() {

  //size(800, 600);
  rectMode(CENTER);
  textMode(CENTER);
  imageMode (CENTER);
  //wkey=akey=skey=dkey=spacekey=false;
  objects=new ArrayList <GameObject>();
  player1=new Starfighter();
  objects.add(player1);
  timer=20;
  score=0;
  theme.rewind();
  gaymover.rewind();
 
}
