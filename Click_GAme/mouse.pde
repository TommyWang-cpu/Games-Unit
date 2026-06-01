void mousePressed() {

  // menu
  if (gameState == menu) {

    if (mouseX > width/2 - 75 && mouseX < width/2 + 75 &&
        mouseY > 240 && mouseY < 290) {

      gameState = playing;
      vx = speedValue;
      vy = speedValue;
    }

    if (mouseX > width/2 - 75 && mouseX < width/2 + 75 &&
        mouseY > 300 && mouseY < 350) {
       gameState = options;
    }

  }
  
  if (gameState == options){
    if (mouseX > width/2 - 75 && mouseX < width/2 + 75 &&
        mouseY > 300 && mouseY < 350) {
        currentImage = (currentImage + 1) % images.length;
        }
        
    if (mouseX > width/2 - 75 && mouseX < width/2 + 75 &&
        mouseY > 360 && mouseY < 410) {
        gameState = menu;
        }
  }

  // play
  if (gameState == playing) {

    // Pause button
    if (mouseX > width - 100 && mouseX < width - 20 &&
        mouseY > 10 && mouseY < 40) {

      gameState = paused;
      pauseSound.play();
      return;
    }

    if (dist(mouseX, mouseY, x, y) < sizeValue/2) {
      score++;
      if (score > highScore) highScore = score;
    } else { 
      lives--;
    }
  }

  // resume
  if (gameState == paused) {
    gameState = playing;
  }

  // game over
  if (gameState == gameOver) {
    reset();
    gameState = menu;
  }
}

void mouseDragged() {

  if (gameState == options);

  if (mouseX >= sizeSliderX && mouseX <= sizeSliderX + 120 &&
      mouseY >= sizeSliderY - 5 && mouseY <= sizeSliderY + 15) {

    sizeValue = map(mouseX, sizeSliderX, sizeSliderX + 120, 50, 200);
  }

  if (mouseX >= speedSliderX && mouseX <= speedSliderX + 120 &&
      mouseY >= speedSliderY - 5 && mouseY <= speedSliderY + 15) {

    speedValue = map(mouseX, speedSliderX, speedSliderX + 120, 1, 10);
  }
}
