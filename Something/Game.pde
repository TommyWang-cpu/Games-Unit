void game(){
  player1.P1();
  player2.P2();

  player1.drawTank(mouseX, mouseY);
  player2.drawTank(player1.x, player1.y);
  
  base1.display();
  base2.display();

  for (Wall w : walls) {
    w.display();
  }
  
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

    float X = x + dx;
    float Y = y + dy;

    boolean blocked = false;

    for (Wall w : walls) {

      if (w.collides(X, Y, size)) {
        blocked = true;
      }
    }

    if (blocked == false) {
      x = X;
      y = Y;
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
class Wall {

  float x, y, w, h;

  Wall(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void display() {
    fill(100);
    rect(x, y, w, h);
  }

  boolean collides(float tx, float ty, float size) {

    return tx + size/2 > x &&
           tx - size/2 < x+w &&
           ty + size/2 > y &&
           ty - size/2 < y+h;
  }
}

void hpBar(float x, float y, float w, float h) {

  
  fill(50);
  rect(x, y, w, h);

  fill(255);
  rect(x, y, w * (damageBarHP / maxHP), h);

  fill(0, 200, 0);
  rect(x, y, w * (hp / maxHP), h); 

  noFill();
  stroke(255);
  strokeWeight(2);
  rect(x, y, w, h);
  noStroke();

  fill(255);
  textAlign(CENTER, CENTER);
  text(int(hp) + " / " + int(maxHP), x + w/2, y + h/2);

  if (damageTimer > 0) {
    damageTimer--;
  } 
  else if (damageBarHP > hp) {
    damageBarHP -= 5;
    if (damageBarHP < hp) {
      damageBarHP = hp;
    }
  }
}
