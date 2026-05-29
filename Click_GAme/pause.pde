void drawPauseButton() {
  fill(255, 200, 0);
  rect(width - 100, 10, 80, 30);
  fill(0);
  textSize(12);
  text("PAUSE", width - 60, 25);
}

void drawPauseScreen() {
  //background(100);
  fill(100);
  textSize(30);
  text("PAUSED", width/2, height/2 - 20);
  textSize(16);
  text("Click to Resume", width/2, height/2 + 20);
}
