class flow {
 
 int x, y;
 flow(int x1, int y1) {
   x=x1;
   y=y1;
  }
  
 void f() {
 if(frameCount % 8 == 0) {
 fill(127, 127);
 rect(0, 0, width, height);
 
 stroke(frameCount % 255, 255, frameCount % 90, 127);
 for(int i = 0; i < width; i++);
  }
 }
}
