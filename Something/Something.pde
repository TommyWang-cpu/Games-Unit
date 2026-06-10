//Tommy Wang
//June 3rd
//Final project
Tank player1;
Tank player2;

ArrayList<Shell> shells;

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
   
 player1 = new Tank(250, height/2, color(60, 140, 60));
 player2 = new Tank(750, height/2, color(60, 60, 200));
 shells = new ArrayList<Shell>();
}

void draw(){
  background(180);
  game();
   for (int i = shells.size()-1; i >= 0; i--) {

  Shell s = shells.get(i);

  s.update();
  s.display();

  //hit player 1
  if (s.hits(player1)) {

    player1.damage(s.damage);

    shells.remove(i);
    continue;
  }

  //hit player 2
  if (s.hits(player2)) {

    player2.damage(s.damage);

    shells.remove(i);
    continue;
  }

  
  if (s.offScreen()) {
    shells.remove(i);
  }
 }
}
