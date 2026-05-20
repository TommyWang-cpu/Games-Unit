void drawPauseScreen() {
  fill(100);
  textSize(30);
  text("PAUSED", width/2 - 50, height/2 - 20);
  textSize(16);
  text("Click to Resume", width/2 - 50, height/2 + 20);
}

void drawPauseButton() {
  fill(255, 200, 0);
  rect(width - 100, 10, 80, 30);
  fill(0);
  textSize(12);
  text("PAUSE", width - 75, 30);
}
