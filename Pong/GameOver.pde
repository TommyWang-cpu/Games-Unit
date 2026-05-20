void gameOver(){
  fill(0,255,0);
  textSize(100);
  if (lscore > 2 || rscore > 2){
  if ( lscore > rscore ){
    text("LEFT WIN",width/2-200,height/2);
}
  if ( rscore > lscore ){
    text("RIGHT WIN",width/2-200,height/2);
}
  textSize(30);
  fill(100);
  text("Click to return", width/2 - 80, height/2 + 40);
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
