void mousePressed(){
 if (gameState == playing) {

    // Pause button
    if (mouseX > width - 100 && mouseX < width - 20 &&
        mouseY > 10 && mouseY < 40) {

      gameState = paused;
      pauseSound.play();
      return;
    } 
}
  if (gameState == menu) {
    if (mouseX > 430 && mouseX < 730 &&
        mouseY > 425 && mouseY < 525) {
        
      gameState = playing;
}
  }
  if (gameState == paused){
    gameState = playing;
  }
  if (gameState == gameOver){
    gameState = menu;
    reset();
  }
}
