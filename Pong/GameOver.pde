void gameOver(){
  if ( lscore > rscore && lscore > 2){
    text("LEFT WIN",width/2,height/2);
}
  if ( rscore > rscore && rscore > 2){
    text("Right WIN",width/2,height/2);
}
