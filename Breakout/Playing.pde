void play(){
  background(#3E619D);
  fill(255);
  circle(px,py,pd);
  
  circle(bx,by,bd);
  
  if (px > 0+pd/2){
  if (a == true) px -= 5;
  }
  if (px < width-pd/2){
  if (d == true) px += 5;
  }
  
  if (px < 0+pd/2){
    a = false;
  }
  
  
  int i = 0;
  while (i < n){
    if (alive[i] == true){
       brick(i);
    }
    i = i+1;
  }  
  
  if (collide == false){
    by += 1;
  } else {
   bx += vx;
   by += vy;
  }
  
  if(bx < bd/2 || bx > width-bd/2){
   vx = vx*-1;
  }
  if(by <= bd/2 ){
   vy = vy*-1;
  }
  
  if(dist(bx,by,px,py) < pd/2+bd/2){
   vx = (bx - px)/10;
   vy = (by - py)/10;
   collide = true;
  }
  reset();
  
  //Score
   textSize(30); 
   fill(180);
   text("Score:",100,700);
   text(score,180,700);
   
  //Live
   text("Live:",600,700);
   text(live,680,700);
}

void brick(int i){
    if (y[i] == 100) fill(#059DFF);
    if (y[i] == 200) fill(#FF058F);
    if (y[i] == 300) fill(#FFCE05);
    if (y[i] == 400) fill(#AFFF05);
    circle(x[i],y[i],bcd);
    if(dist(bx,by,x[i],y[i]) < bd/2+bcd/2){
     vx = (bx - x[i])/10;
     vy = (by - y[i])/10; 
     alive[i] = false;
     score ++;
     println(i);
     //score = 28;
    }
    
}

void reset(){
  if(by > height+bd/2){
    bx = width/2;
    by = height-200;
    collide = false;
    live --;
  }
}
