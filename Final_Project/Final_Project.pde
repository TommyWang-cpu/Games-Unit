//Tommy Wang
//June 3rd
//Final project
ArrayList<Shell> shells;

Tank player1;
Tank player2;

Base base1;
Base base2;

int gameState;
int playing = 0;
int menu = 1;
int gameover = 2;

float hp = 1000;
float maxHP = 1000;

float damageBarHP = 100;
int damageDelay = 20;    
int damageTimer = 0;



boolean G = true;
boolean S = false;
boolean Team = false;
boolean w,a,s,d,up,down,right,left,e;


void setup(){
 size(1000,600) ;
 textAlign(CENTER,CENTER);

 base1 = new Base(100, height/2, color(0,255,0));
 base2 = new Base(width-100, height/2, color(0,0,255));
   
 player1 = new Tank(250, height/2, color(60, 140, 60));
 player2 = new Tank(750, height/2, color(60, 60, 200));
 shells = new ArrayList<Shell>();
 
 gameState = menu;
}

void draw(){
  background(180);
  
  if (gameState == menu){
    menu();
    reset();
  }
  if (gameState == gameover){
    drawGameOver();
  }
  if (gameState == playing) {
     game();
     for (int i = shells.size()-1; i >= 0; i--) {

      Shell s = shells.get(i);

      s.update();
      s.display();
  
    if (dist(s.x, s.y, base1.x, base1.y) < base1.size/2 &&
      s.owner != player1) {

      base1.damage(s.damage);

      shells.remove(i);
    }

    if (dist(s.x, s.y, base2.x, base2.y) < base2.size/2 &&
      s.owner != player2) {
  
      base2.damage(s.damage);
  
      shells.remove(i);
  }

    //hit player 1
    if (s.hits(player1)) {

      player1.damage(s.damage);

      shells.remove(i);
    }

     //hit player 2
    if (s.hits(player2)) {

      player2.damage(s.damage);

      shells.remove(i);
    }

  
    if (s.offScreen() || shellHitsWall(s.x, s.y)) {
      shells.remove(i);
    }
   }
  }
}
