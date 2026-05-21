void play(){
  circle(px,py,pd);
  
  circle(bx,by,bd);
  
  if (a == true) px -= 3;
  if (d == true) px += 3;
  
  int i =0;
  while (i < n){
    circle(x[i],y[i],bcd);
    if(dist(bx,by,x[i],y[i]) < bd/2+bcd/2){
   vx = (bx - x[i])/10;
   vy = (by - y[i])/10;
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
  if(by <= bd/2 || by > height-bd/2){
   vy = vy*-1;
  }
  
  if(dist(bx,by,px,py) < pd/2+bd/2){
   vx = (bx - px)/10;
   vy = (by - py)/10;
   collide = true;
  }
}
