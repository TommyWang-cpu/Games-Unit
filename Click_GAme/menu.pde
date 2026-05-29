void drawMenu() {
  background(180);

  fill(0);
  textSize(30);
  text("CLICK GAME", width/2, 60);

  imageMode(CENTER);
  image(images[currentImage], width/2, 150, sizeValue, sizeValue);

  buttons();
}

void buttons(){
  fill(100, 200, 100);
  rect(width/2 - 75, 240, 150, 50);
  fill(0);
  textSize(18);
  text("START", width/2, 265);

  fill(100, 150, 255);
  rect(width/2 - 75, 300, 150, 50);
  fill(0);
  text("OPTIONS", width/2, 325);

  fill(200, 100, 100);
  rect(width/2 - 75, 360, 150, 50);
  fill(0);
  text("EXIT", width/2, 385); 
}

void imageOptions(){
  background(180);
  
  textSize(18);
  
  fill(100, 150, 255);
  rect(width/2 - 75, 300, 150, 50);
  fill(0);
  text("CHANGE IMAGE", width/2, 325);
  
  fill(200, 100, 100);
  rect(width/2 - 75, 360, 150, 50);
  fill(0);
  text("EXIT", width/2, 385);
  
  imageMode(CENTER);
  image(images[currentImage], width/2, 150, sizeValue, sizeValue);
  
  drawSlider(sizeSliderX, sizeSliderY, sizeValue, 50, 200, "SIZE", color(50,150,255));
  drawSlider(speedSliderX, speedSliderY, speedValue, 1, 10, "SPEED", color(255,100,100));
}

void drawSlider(float xPos, float yPos, float value, float minV, float maxV, String label, color c) {
  fill(0);
  textSize(12);
  text(label, xPos + 40, yPos - 10);

  fill(200);
  rect(xPos, yPos, 120, 10);

  fill(c);
  rect(xPos, yPos, map(value, minV, maxV, 0, 120), 10);
}
