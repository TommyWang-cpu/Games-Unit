void game(){
  
 fill(#FADD4C);
 circle(lx,ly,ld);
 fill(#DC4CFA);
 circle(rx,ry,rd); 
 
 //ball
 fill(255);
 circle(bx,by,bd);
 
 if(w == true) ly -= 5;
 if(s == true) ly += 5;
 if(up == true) ry -= 5;
 if(down == true) ry += 5;
   
  // score
  textSize(50);
  fill(0);
  text(lscore,width/4,100);
  text(rscore,3*width/4,100);
  
  //scoring
  if (bx < 0-bd){
    rscore++;
    bx = width/2;
    by = height/2;
  }
  if (bx > width+bd){
    lscore++;
    bx = width/2;
    by = height/2;
  }
   
  //ball movement 
   bx += vx;
   by += vy;

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
  background(#B42323);
  line(width/2,0,width/2,height);
}
