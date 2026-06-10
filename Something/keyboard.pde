void keyPressed() {
  //tank1 move
  if (key == 'w' || key == 'W') w = true;
  if (key == 'a' || key == 'A') a = true;
  if (key == 's' || key == 'S') s = true;
  if (key == 'd' || key == 'D') d = true;
  
  //tank2 move
  if (keyCode == UP) up = true;
  if (keyCode == DOWN) down = true;
  if (keyCode == LEFT) left = true;
  if (keyCode == RIGHT) right = true;
  
  
  if (key == 'e' || key == 'E') e = true;
  
  
  if (key == ' ') {
    //playerTank.damage(10);
    hp -= 100;
  }
  if (key == 'm' || key == 'M') {
    player2.shoot(player1.x, player1.y);
  }
}

void keyReleased() {
  //tank1 move
  if (key == 'w' || key == 'W') w = false;
  if (key == 'a' || key == 'A') a = false;
  if (key == 's' || key == 'S') s = false;
  if (key == 'd' || key == 'D') d = false;
  
  //tank2 move
  if (keyCode == UP) up = false;
  if (keyCode == DOWN) down = false;
  if (keyCode == LEFT) left = false;
  if (keyCode == RIGHT) right = false;
}
