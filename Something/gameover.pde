void gameOver(){
textAlign(CENTER);
textSize(40);
fill(255);

if (base1.hp <= 0) {
  text("PLAYER 2 WINS!", width/2, 60);
 
  }

if (base2.hp <= 0) {
  text("PLAYER 1 WINS!", width/2, 60);
  }
}
