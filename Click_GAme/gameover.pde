void drawGameOver() {
  background(50);

  fill(255);
  textSize(30);
  text("GAME OVER", width/2, height/2 - 40);

  textSize(18);
  text("Score: " + score, width/2, height/2);
  text("Click to return", width/2, height/2 + 40);
}    

void reset() {
  x = width/2;
  y = height/2;

  vx = speedValue;
  vy = speedValue;

  score = 0;
  lives = 10;
}
