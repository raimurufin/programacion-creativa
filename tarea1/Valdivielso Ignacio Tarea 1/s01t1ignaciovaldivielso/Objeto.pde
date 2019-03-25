class Objeto{
float r = 8;
float s = 1.5;
float negro = 0;
float blanco = 255;
float mid = 300;
 
 void linesS(){
//background(150);
  for (int i = 5; i < 1800; i = i+10) {
    line(301, 100, 600, i);
  line(299, 100, 0, i);
  }
 }

 void linesU(){
  for (int i = 5; i < 600; i = i+10) {
    line(300, 100, i, 0);
  }
 }
 void linesD(){
 for (int i = 5; i < 600 ; i = i+10){
   line(300, 100, i, 1800);
 }
 }
 void tri(){
  if(keyPressed){
   if(key == 'v' || key == 'V'){
    noFill();
   triangle(200,100,400,100,300,600);
   }
}
 }
 void ellip(){ 
   if(keyPressed){
   if(key == 'n' || key == 'N'){
   ellipse(width/2, height/2, mid,500);
   }  
 }
 }
 void gro(){
   if(keyPressed){
   if(key == '1'){
   stroke(random(100,155), 0,0);
   }
   }
 }
 void groc1(){
 if(keyPressed){
   if(key == '2'){
   stroke(blanco);
   }
   }
 }
 void rec(){
 if (keyPressed){
if (key == 'b' || key == 'B') {
  stroke(1);
  fill(negro);
  rectMode(CENTER);
  rect(width/2, height/2, 600,600);
  }
 }
 }
  void rec2(){
 if (keyPressed){
if (key == 'c' || key == 'C')
  stroke(1);
  fill(255);
  rectMode(CENTER);
  rect(width/2, height/2, 600,600);
 }
  }
  }
