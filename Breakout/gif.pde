void Gif(){
  image(gif[f],0,0,width,height);
  println(frameCount);
  
  if(frameCount % 3 == 0) f = f+1;
  if(f == numberOfFrames) f = 0;
}
