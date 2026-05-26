import processing.sound.*; 
SoundFile pauseSound;

PImage[] gif;
int numberOfFrames;
int f;

int[] x;
int[] y;
boolean[] alive;

int n;
int bcd;
int live;
int tempx, tempy;

int gameState; 
int menu = 0;
int playing = 1;
int gameOver = 2;
int paused = 3;

float px,py,pd;
float bx,by,bd;
float vx,vy;

boolean a,d;
boolean collide = false;



void setup(){
  size(800,800,P2D);
  background(180);
  
  numberOfFrames = 10;
  gif = new PImage[numberOfFrames];
  int i = 0;
  while(i < numberOfFrames){
    gif[i] = loadImage("frame_0"+i+"_delay-0.04s.gif");
    i=i+1;
  }
  
  gameState = menu;
  
  live = 3;
  
  px = width/2;
  py = height;
  pd = 100;
  
  bx = width/2;
  by = height-200;
  bd = 20;
  
  vx = 8;
  vy = 8;
  
  n = 28;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];
  
  tempx = 100;
  tempy = 100;
  //int i = 0;
  while (i < n){
   x[i] = tempx;
   y[i] = tempy;
   alive[i] = true;
   tempx += 100;
   if (tempx == width){
    tempx = 100;
    tempy += 100;
   }
   i = i+1;
  }
  
  bcd = 50;
  
  pauseSound = new SoundFile(this, "TheWorld.mp3");
}

void draw(){
  background(180);
  
  if(gameState == menu){
    drawMenu();
    Gif();
  }
  
  if (gameState == playing) {
    play();
    drawPauseButton();
    gameOver();
  }
  if (gameState == gameOver) {
    gameOver();
  }
  
  if (gameState == paused) {
    drawPauseScreen();
  }
}
