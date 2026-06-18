void gameOver(){
textAlign(CENTER);
textSize(40);
fill(255);

if (base1.hp <= 0) {
  gameState = gameover;
  }

if (base2.hp <= 0) {
  gameState = gameover;
  }
}

void drawGameOver(){
  
  fill(255);
  textSize(30);
  if (base1.hp <= 0) {
    text("PLAYER 2 WINS!", width/2, height/2);
  }
  
  if (base2.hp <= 0) {
    text("PLAYER 1 WINS!", width/2, height/2);
  }
  
  textSize(18);
  text("Click to return", width/2 - 50, height/2 + 40);
  
}

void reset(){
  
  base1.hp = base1.maxHP;
  base2.hp = base2.maxHP;

  player1.hp = player1.maxHP;
  player2.hp = player2.maxHP;

  shells.clear();
}
