void gameOver(){
  if (live == 0){
  loss = true;  
  gameState = gameOver;
  Reset();
  }
  if (score == 28){
  gameState = gameOver;
  Reset();
  }
}

void drawGameOver(){
  if (loss){
  fill(255,0,0);
  textSize(100);
  text("Game Over",width/2-200,height/2);
  textSize(30);
  fill(100);
  text("Click to return", width/2 - 80, height/2 + 40);
  } else {
  fill(0,255,0);
  textSize(100);
  text("You Win",width/2-150,height/2);
  textSize(30);
  fill(100);
  text("Click to return", width/2 - 80, height/2 + 40);
  }
}

void Reset(){
  live = 3;
  score = 0;
}
