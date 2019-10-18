 Bacteria [] dots;
 void setup()   
 {     
 	size(800,800);
  background(0);
  dots = new Bacteria[80];
  for(int i = 0; i < dots.length ; i++){
    dots[i] = new Bacteria();
  }
 }   
 void draw(){    
 	for(int i = 0; i < dots.length ; i++){
    dots[i].move();
    dots[i].show();
  } 
 }  
 class Bacteria{     
 	int x, y;
  Bacteria(){
    x = (int)(Math.random()*800);
    y = (int)(Math.random()*800);
  }
  void move(){
    x++;
  }
  void show(){
    fill(255);
    ellipse(x,y,5,5);
  }
 }
