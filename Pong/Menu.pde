void drawMenu() {
  background(180);

  fill(0);
  textSize(200);
  text("Pong", width/5,300);
  
  
  strokeWeight(10);
  textSize(80);
  noFill();
  rect(80,425,300,100);
  text("1 Player",100,500);
  
  textSize(80);
  rect(430,425,300,100);
  text("2 Player",450,500);
  strokeWeight(1);
}
