void game(){
 strokeWeight(5);
 stroke(0);
 fill(#FADD4C);
 circle(lx,ly,ld);
 fill(#DC4CFA);
 circle(rx,ry,rd); 
 
 //ball
 fill(255);
 circle(bx,by,bd);
 
 if(w == true) ly -= 8;
 if(s == true) ly += 8;
 
 if (AI == false){
    if(up == true) ry -= 8;
    if(down == true) ry += 8;
 } else {
    if( bx > 400){
      if(by > ry) ry += 8;
      if(by < ry) ry -= 8;
    }
 }
   
   
   
   
  // score
  textSize(50);
  fill(0);
  text(lscore,width/4,100);
  text(rscore,3*width/4,100);
  timer -= 1;
  
  //scoring
  if (bx < 0){
    rscore++;
    bx = width/2;
    by = height/2;
    timer = 100;
  }
  if (bx > width){
    lscore++;
    bx = width/2;
    by = height/2;
    timer = 100;
  }
   
  //ball movement
  if (timer < 0){
   bx += vx;
   by += vy;
  }

  if(bx <= bd/2 || by >= height-bd/2){
   vy = vy*-1;
  }
  if(bx <= bd/2 || by <= bd/2){
   vy = vy*-1;
  }
  if(dist(bx,by,rx,ry) < rd/2+bd/2){
   vx = vx*-1;
  }
  if(dist(bx,by,lx,ly) < ld/2+bd/2){
   vx = vx*-1;
  }
 
}

void gameBackground(){
  stroke(0);
  background(#B42323);
  line(width/2,0,width/2,height);
}
