void gameBackground() {
  fill(0);
  textSize(18);
  text("Score: " + score, width/2, 20);
  text("High Score: " + highScore, width/2, 45);
  text("Lives: " + lives, width/2, 70);
}

void drawObject() {
  background(180);
  imageMode(CENTER);
  image(images[currentImage], x, y, sizeValue, sizeValue);
  
}

void moveObject() {
  x += vx;
  y += vy;

  if (x < sizeValue/2 || x > width - sizeValue/2) {
    vx *= -1;
  }

  if (y < sizeValue/2 || y > height - sizeValue/2) {
    vy *= -1;
  }
}
