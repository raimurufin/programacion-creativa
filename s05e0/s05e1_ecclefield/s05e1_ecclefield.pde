void setup(){

size(1000,1000);
background(255,150,15);
}

void draw (){
  
for (int i = 200; i < 400; i = i+15) {
  for (int j = 200; j < 800; j = j+15) {
fill(0);
ellipse(i, j, 10,10);  
}
}

}  
