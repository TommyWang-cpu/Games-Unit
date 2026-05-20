void keyPressed(){
  if (key == 'w' || key =='W') w = true;
  if (key == 's' || key =='S') s = true;
  if (AI == false){
  if(keyCode == UP) up = true;
  if(keyCode == DOWN) down = true;
  } else {
   up = false;
   down = false;
  }
}


void keyReleased(){
  if (key == 'w' || key =='W') w = false;
  if (key == 's' || key =='S') s = false;
  if(keyCode == UP) up = false;
  if(keyCode == DOWN) down = false;
}
