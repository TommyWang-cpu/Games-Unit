void gameOver(){
if (player1.hp > 0) {
  player1.P1();
  player1.drawTank(mouseX, mouseY);
 }

  if (player2.hp > 0) {
  player2.P2();
  player2.drawTank(player1.x, player1.y);
 }
  textAlign(CENTER);
  textSize(40);
  fill(255);

  if (player1.hp <= 0) {
  text("PLAYER 2 WINS!", width/2, 100);
}
  
  if (player2.hp <= 0) {
  text("PLAYER 1 WINS!", width/2, 100);
 }
}
