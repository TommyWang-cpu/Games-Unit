void drawMenu() {
  background(#1571CB);

  fill(#1BC0F0);
  textSize(200);
  text("Pong", width/5,300);
  
  fill(#FC26C7);
  strokeWeight(10);
  textSize(80);
  noFill();
  tactile(270,475,100);
  rect(80,425,300,100);
  text("1 Player",100,500);
  
  tactile(580,475,100);
  textSize(80);
  rect(430,425,300,100);
  text("2 Player",450,500);
}

void tactile(int x, int y, int r){
 if(dist(x,y,mouseX,mouseY) < r){
   stroke(#FC262A);
  } else {
   stroke(0); 
  } 
}
