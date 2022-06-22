void help() {
  fill(#a7bed3);
  stroke(0);
  rect(width/2-10, height/2, 600, 400);
  tactile(650, 375, 50, 25);
  fill(#c6e2e9);
  rect(650, 375, 100, 50);
  fill(0);
  textSize(25);
  text("OKAY", 615, 385);
  textSize(25);
  text("and space to shoot", 530, 300);
  text("use 'w''a''s''d' keys to move", 490, 250);
  text("good luck!", 600, 550);
  textSize(20);
  text("and defend the earth", 540, 500);
  text("Hit the Evil spaceships", 530, 450);
 
}
void helpClicks() {
  if (mouseX>600 && mouseX< 700 && mouseY>350 && mouseY<400) 
    mode=INTRO;
}
