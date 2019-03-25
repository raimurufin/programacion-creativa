class Objeto{
float r = 8;
float s = 1.5;
float negro = 0;
float blanco = 255;
float mid = 300;
float bord = 600;

 void linesS(){
//background(150);
  for (int i = 5; i < 1800; i = i+10) {
    line(301, 100, bord, i);
  line(299, 100, 0, i);
  }
 }

 void linesU(){
  for (int i = 5; i < bord; i = i+10) {
    line(300, 100, i, 0);
  }
 }
 void linesD(){
 for (int i = 5; i < bord ; i = i+10){
   line(300, 100, i, 1800);
 }
 }
 void tri(){
  if(keyPressed){
   if(key == 'v' || key == 'V'){
    noFill();
   triangle(200,100,400,100,300,bord);
   }
}
 }
 void ellip(){ 
   if(keyPressed){
   if(key == 'n' || key == 'N'){
   ellipse(width/2, height/2, 400,600);
   }  
 }
 }
  void ellip2(){ 
   if(keyPressed){
   if(key == '4'){
   ellipse(width/2, height/2, 500,700);
   }  
 }
 }
 void gro(){
    if (keyPressed == true){
if (key == '1') {
   strokeWeight(s);
 stroke(random(100,155), 0, 0);
}
}
 }
 void groc1(){
 if (keyPressed == true){
if (key == '2') {
 stroke(blanco);
}
 }
 }
 void groc2(){
 if (keyPressed == true){
if (key == '3') {
stroke(mouseX, mouseY, 50); 
}
}
}
 void rec(){
 if (keyPressed == true){
if (key == 'b' || key == 'B') {
  stroke(1);
  fill(negro);
  rectMode(CENTER);
  rect(width/2, height/2, 595,842);
  }
 }
 }
  void rec2(){
 if (keyPressed){
if (key == 'c' || key == 'C') {
  stroke(1);
  fill(blanco);
  rectMode(CENTER);
  rect(width/2, height/2, 595,842);
 }
  }
 }
}
