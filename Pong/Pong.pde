import processing.sound.*; 
SoundFile pauseSound;

int gameState; 
int menu = 0;
int playing = 1;
int gameOver = 2;
int paused = 3;
int options = 4;
int lscore,rscore,timer;

float rx,ry,rd,lx,ly,ld;
float bx,by,bd;
float vx,vy,px,py;

boolean w,s,up,down = false;

void setup(){
  size(800,600);
  gameState = menu;
  
  //paddles
  lx = 0;
  ly = height/2;
  ld = 200;
  
  rx = width;
  ry = height/2;
  rd = 200;
  
  //ball
  bx = width/2;
  by = height/2;
  bd = 100;
  
  vx = 5;
  vy = 5;
  px = bx*2;
  py = by*2;
  
  pauseSound = new SoundFile(this, "TheWorld.mp3");
}

void draw(){
  background(180);
  
  if (gameState == menu) {
   // drawMenu();
    //return;
  }

  if (gameState == gameOver) {
    //drawGameOver();
    //return;
  }

  if (gameState == paused) {
    //drawPauseScreen();
    //return;
  }
  
  if (gameState == options){
   //imageOptions(); 
   //return;
  }
  
  gameBackground();
  game();
  gameOver();
}
