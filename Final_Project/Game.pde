void game(){
  player1.P1();
  player2.P2();
  
  if (G == true){
  player1.drawTank(mouseX, mouseY);
  player2.drawTank(player1.x, player1.y);
  } else if (S == true) {
  player1.drawTank(player2.x, player2.y);
  player2.drawTank(mouseX, mouseY);
  }
  
  base1.display();
  base2.display();
  
  drawWalls();
  gameOver();
}
////////////////////////////////////////
class Base {

  float x, y;
  float size;

  float hp = 500;
  float maxHP = 500;

  color c;

  Base(float x, float y, color c) {

    this.x = x;
    this.y = y;
    this.c = c;

    size = 80;
  }

  void display() {

    fill(c);
    rectMode(CENTER);
    rect(x, y, size, size);

    // HP Bar
    fill(50);
    rect(x-40, y-60, 80, 8);

    fill(0, 255, 0);
    rect(x-40, y-60, 80*(hp/maxHP), 8);
  }

  void damage(float amount) {
    hp = max(0, hp - amount);
  }
}
////////////////////////////////////////////
class Tank {

  float x, y;

  float hp = 100;
  float maxHP = 100;

  float speed = 3;
  float size = 40;
  

  color tankColor;

  Tank(float x, float y, color c) {
    this.x = x;
    this.y = y;
    tankColor = c;
    }
  
  void move(float dx, float dy) {

  float nextX = x + dx;
  float nextY = y + dy;

  if (wallCollision(nextX, nextY, size) == false) {
    x = nextX;
    y = nextY;
  }
}

  void P1() {

      if (w == true) {
        move(0, -speed);  
      }
      if (s == true){
        move(0, speed);
      }
      if (a == true){
        move(-speed, 0);
      }
      if (d == true){
        move(speed, 0);
      }
      
  }

  void P2() {
    
      if (up == true){
        move(0, -speed);
      }
      if (down == true){
        move(0, speed);
      }
      if (left == true){
        move(-speed, 0);
      }
      if (right == true){
        move(speed, 0);
      }
    
  }

  void drawTank(float targetX, float targetY) {

    float angle = atan2(targetY - y, targetX - x);

    rectMode(CENTER);

    fill(tankColor);
    rect(x, y, size, size * 0.7);

    pushMatrix();

    translate(x, y);
    rotate(angle);

    fill(100);
    ellipse(0, 0, size * 0.5, size * 0.5);

    fill(40);
    rect(size * 0.35, 0, size * 0.7, size * 0.12);

    popMatrix();

    drawHPBar();
  }

  void drawHPBar() {

    fill(50);
    rect(x - 20, y - 35, 40, 6);

    fill(0, 255, 0);
    rect(x - 20, y - 35, 40 * hp/maxHP, 6);

  }

  void shoot(float targetX, float targetY) {

    float angle = atan2(targetY - y, targetX - x);

    float startX = x + cos(angle) * 30;
    float startY = y + sin(angle) * 30;

    shells.add(new Shell(startX, startY, angle, this));
  }
  
  void damage(float amount) {

    hp -= amount;

    if (hp < 0) {
      hp = 0;
      destroyed();
    }
  }
  void destroyed(){
    if (hp == 0){
      speed = 0;
    }
  }
}
////////////////////////////////////////////
class Shell {

  float x, y;
  float dx, dy;

  float speed = 8;
  float damage = 20;

  Tank owner;

  Shell(float x, float y, float angle, Tank owner) {

    this.x = x;
    this.y = y;

    this.owner = owner;

    dx = cos(angle) * speed;
    dy = sin(angle) * speed;
  }

  void update() {
    x += dx;
    y += dy;
  }

  void display() {
    fill(20);
    ellipse(x, y, 8, 8);
  }

  boolean offScreen() {
    return x < 0 || x > width ||
           y < 0 || y > height;
  }

  boolean hits(Tank t) {

    if (t == owner) {
      return false; //cant hit yourself
    }

    return dist(x, y, t.x, t.y) < t.size/2;
  }
}
/////////////////////////////////////////

void drawWalls() {

  fill(100);

  // Top wall
  rect(500, 150, 200, 40);

  // Bottom wall
  rect(500, 500, 200, 40);

  // Middle pillar
  rect(580, 250, 40, 200);
}

boolean wallCollision(float tx, float ty, float size) {

  // Top wall
  if (tx + size/2 > 400 &&
      tx - size/2 < 600 &&
      ty + size/2 > 150 &&
      ty - size/2 < 190) {
    return true;
  }

  // Bottom wall
  if (tx + size/2 > 400 &&
      tx - size/2 < 600 &&
      ty + size/2 > 500 &&
      ty - size/2 < 540) {
    return true;
  }

  // Middle pillar
  if (tx + size/2 > 580 &&
      tx - size/2 < 620 &&
      ty + size/2 > 150 &&
      ty - size/2 < 350) {
    return true;
  }

  return false;
}

boolean shellHitsWall(float x, float y) {

  // Top wall
  if (x > 400 && x  < 600 && y  > 150 && y  < 190) {
    return true;
  }

  // Bottom wall
  if (x > 400 && x  < 600 && y  > 500 && y  < 540) {
    return true;
  }

  // Middle pillar
  if (x > 580 && x  < 620 && y  > 150 && y  < 350) {
    return true;
  }

  return false;
}
