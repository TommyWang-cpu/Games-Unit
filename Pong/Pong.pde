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
float vx,vy;

boolean w,s,up,down = false;
boolean AI = false;

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
  
  vx = 8;
  vy = 8;
  
  rscore = lscore = 0;
  timer = 100;
  
  pauseSound = new SoundFile(this, "TheWorld.mp3");
}

void draw(){
  background(180);
   
  if (gameState == playing) {
     gameBackground();
     game();
     gameOver();
     drawPauseButton();
  }
  
  if (gameState == menu) {
      drawMenu();
  }

  if (gameState == gameOver) {
      gameOver();
  }

  if (gameState == paused) {
    drawPauseScreen();
    
  }
}
