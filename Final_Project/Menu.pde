
void menu(){
  background(180);
  team();
  buttons();
  if (Team == true) selectTeam();
  
  
}

void buttons(){
  
  fill(100, 200, 100);
  rect(width/2 - 75, 400, 150, 50);
  fill(0);
  textSize(18);
  text("START", width/2, 425);
   
  
  fill(100, 150, 255);
  rect(width/2 - 75, 300, 150, 50);
  fill(0);
  text("OPTIONS", width/2, 325);

 
}

void team(){
  if (G == true) t1(20,20);
  if (S == true) t2(20,20);
}

void t1(int x,int y){
  fill(0,255,0);
  rect(x,y,150,100);
  fill(0);
  textSize(25);
  text("Team 1",x+75,y+50);
  
}

void t2(int x,int y){
  fill(255,0,0);
  rect(x,y,150,100);
  fill(0);
  textSize(25);
  text("Team 2",x+75,y+50);
}

void selectTeam(){
 background(180);
 t1(width/2 - 75,150);
 t2(width/2 - 75,400);
}
