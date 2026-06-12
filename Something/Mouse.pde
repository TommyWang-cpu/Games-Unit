void mousePressed(){
  
   player1.shoot(mouseX, mouseY);
   
  if (mouseX > 20 && mouseX < 170 &&
      mouseY > 20 && mouseY < 120) {
     
    Team = true;

 }
 
 if (Team == true){
   if (mouseX > width/2 - 50 && mouseX < width/2 + 100 &&
       mouseY > 150 && mouseY < 250){
         G = true;
         S = false;
         Team = false;
       }
   if (mouseX > width/2 - 50 && mouseX < width/2 + 100  &&
       mouseY > 400 && mouseY < 500){
         S = true;
         G = false;
         Team = false;
       }
 }
}
