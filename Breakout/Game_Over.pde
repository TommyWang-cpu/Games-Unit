void gameOver(){
  if (live == 0){
  fill(0,255,0);
  textSize(100);
  text("Game Over",width/2,height/2);
  textSize(30);
  fill(100);
  text("Click to return", width/2 - 80, height/2 + 40);
  gameState = gameOver;
  Reset();
  }
  //if (alive[] == false){
  //textSize(100);
  //text("You Win",width/2,height/2);
  //textSize(30);
  //fill(100);
  //text("Click to return", width/2 - 80, height/2 + 40);
  //gameState = gameOver;
  //Reset();
  //}
}

void Reset(){
  live = 3;
}
