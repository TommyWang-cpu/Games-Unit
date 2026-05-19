void gameOver(){
  fill(0,255,0);
  if (lscore > 2 || rscore > 2){
  if ( lscore > rscore ){
    text("LEFT WIN",width/2-100,100);
}
  if ( rscore > lscore ){
    text("Right WIN",width/2-100,100);
}
  gameState = gameOver;
  }
}

void drawGameOver(){
  
  fill(255);
  textSize(30);
  text("GAME OVER", width/2 - 70, height/2 - 40);

  textSize(18);
  //text("Score: " + score, width/2, height/2);
  text("Click to return", width/2 - 50, height/2 + 40);
}
void reset(){
  lscore = 0;
  rscore = 0;
  
  lx = 0;
  ly = height/2;
  ld = 200;
  
  rx = width;
  ry = height/2;
  rd = 200;
}
