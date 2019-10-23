Cell [] dots;
Bacteria yoyo;
int BacteriaX,BacteriaY,BacteriaP,BacteriaZ,CellX,CellY;

import java.awt.MouseInfo;  
 void setup()   
 {     
 	size(800,800);
  background(0);
  dots = new Cell[80];
  for(int i = 0; i < dots.length ; i++){
    dots[i] = new Cell();
  }
 }   
 void draw(){  
  
 	for(int i = 0; i < dots.length ; i++){
    dots[i].show();
    dots[i].walk();
    yoyo.show();
    yoyo.getBig();
  } 
 }  
 class Bacteria{     
 	
  BacteriaP=10;
  BacteriaZ=10;
  Bacteria(){
    BacteriaY= 400;
    BacteriaX= 400;
  }
  void move(){
    BacteriaY = mouseY;
    BacteriaX = mouseX;          
  }
  void show(){
    fill(255,255,102);
    ellipse(BacteriaX,BacteriaY,BacteriaP,BacteriaZ);
  }
  void getBig(){
    for(int i = 0; i < dots.length ; i++){
      if(BacteriaX == Cell[i].X){
        if(BacteriaY == Cell[i].Y){
          fill(0);
          ellipse(Cell[i].X,Cell[i].Y,10,10);
          p+=10;
          z+=10;
        }
      }
    }
  }
 }
 
 class Cell{
   int x, y;
   Cell(){
     x = (int)(Math.random()*800);
     y = (int)(Math.random()*800);
   }
   void walk(){
     x += (int)(Math.random()*5)-2;
     y += (int)(Math.random()*5)-2;
   }
   void show(){
     fill(255);
     ellipse(x,y,5,5);
   }
 }
