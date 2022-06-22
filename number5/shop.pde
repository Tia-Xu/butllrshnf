
void shop() {
  //background
  fill(#a7bed3);
  rect(width/2, height/2, width-500, height-400);
  //rects box+pic
  fill(255);
  tactile(width/2, height/2, 25, 25);
  rect(width/2, height/2, 50, 50);
  tactile(width/2-150, height/2, 25, 25);
  rect(width/2-150, height/2, 50, 50);
  tactile(width/2+150, height/2, 25, 25);
  rect(width/2+150, height/2, 50, 50);

  fill(#c6e2e9);
  tactile(width/2, height/2+120, 50, 25);
  rect(width/2, height/2+120, 100, 50);

  fill(0);
  text("coins:", 400, 300);
  text(bank, 450, 300);
  text("done", width/2-20, height/2+125);
  fill(0);
  textSize(30);
  text("3", width/2-5, height/2+10);
  text("2", width/2-155, height/2+10);
  text("5", width/2+145, height/2+10);
  textSize(15);
  text("lives+2", width/2-175, height/2+50);
  text("100 coins", width/2-175, height/2+75);
  text("lives+3", width/2-25, height/2+50);
  text("300 coins", width/2-25, height/2+75);
  text("lives+5", width/2+125, height/2+50);
  text("500 coins", width/2+125, height/2+75);
}

void tactile(int x, int y, int a, int b) {
  if (mouseX<x+a && mouseX>x-a && mouseY<y+b && mouseY>y-b) {
    strokeWeight(3);
  } else {
    strokeWeight(1);
  }
}


void shopClicks() {
 println(player1.lives);
  if (mouseX>width/2-175 && mouseX<width/2-125 && mouseY>height/2-25 && mouseY<height/2+25 &&bank>=100) {
    live=2;
   player1.lives=player1.lives+2;
    bank=bank-100;
  }
  if (mouseX>width/2-25 && mouseX<width/2+25 && mouseY>height/2-25 && mouseY<height/2+25 && bank>=300) {
   live=3;
   player1.lives=player1.lives+3;
    bank=bank-300;
  }
  if (mouseX>width/2+125 && mouseX<width/2+175 && mouseY>height/2-25 && mouseY<height/2+25 && bank>=500) {
    live=5;
   player1.lives=player1.lives+5;
    bank=bank-500;
  }
   if (mouseX<width/2+50 && mouseX>width/2-50 && mouseY>height/2+95 && mouseY<height/2+145) {
    mode=INTRO;
  }
}
