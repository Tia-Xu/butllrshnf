
PImage wheel;
void coolr() {
  wheel=loadImage("ColorWheel.png");
  fill(255);
  rect(width/2, height/2, 500, 400);
  image(wheel, width/2, height/2, 150, 150);
  stroke(0);
  rect(width/2, 550, 50, 25);
  fill(0);
  text("pick your bullet color",width/2-200,250);
  text("done",width/2-20,555);
  fill(selectedcolor);
  rect(800,250,30,30);
  
}
void coolrClicks() {
  if (dist(width/2, height/2, mouseX, mouseY)<75) {
    selectedcolor=get(mouseX, mouseY);
  }
  if (mouseX>width/2-25 && mouseX<width/2+25 && mouseY>532&& mouseY<562){  
    mode=INTRO;
}
  
}
