
int[] x;
int[] y;
int n;
int bcd;
int timer;
int tempx, tempy;

float px,py,pd;
float bx,by,bd;
float vx,vy;

boolean a,d;
boolean collide = false;



void setup(){
  size(800,800);
  background(180);
  
  timer = 200;
  
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
  
  tempx = 100;
  tempy = 100;
  int i = 0;
  while (i < n){
   x[i] = tempx;
   y[i] = tempy;
   tempx += 100;
   if (tempx == width){
    tempx = 100;
    tempy += 100;
   }
   i = i+1;
  }
  
  bcd = 50;
}

void draw(){
  background(180);
  play();
}
