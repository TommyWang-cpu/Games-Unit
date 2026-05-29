import processing.sound.*; 
SoundFile pauseSound;

PImage[] images;
int currentImage = 0;

float x, y;
float vx, vy;

float sizeValue = 100;
float speedValue = 4;

float sizeSliderX = 20, sizeSliderY = 330;
float speedSliderX = 20, speedSliderY = 380;

int score = 0;
int highScore = 0;
int lives = 10;

int gameState; 
int menu = 0;
int playing = 1;
int gameOver = 2;
int paused = 3;
int options = 4;
// 0 = menu
// 1 = playing
// 2 = game over
// 3 = paused
// 4 = options

void setup() {
  size(600, 500);
  textAlign(CENTER, CENTER);
  
  gameState = menu;
  
  images = new PImage[3];
  images[0] = loadImage("DVD.jpg");
  images[1] = loadImage("Chicken.jpg");
  images[2] = loadImage("Apple.jpg");
  
  
  pauseSound = new SoundFile(this, "TheWorld.mp3");

  reset();
}

void draw() {
  
  if(gameState == playing){
    moveObject();
    drawObject();
    gameBackground();
    drawPauseButton();
  }

  if (gameState == menu) {
    drawMenu();
  }

  if (gameState == gameOver) {
    drawGameOver();
  }

  if (gameState == paused) {
    drawPauseScreen();
  }
  
  if (gameState == options){
   imageOptions(); 
  }
  
  if (lives <= 0) {
    gameState = gameOver;
  }
}
