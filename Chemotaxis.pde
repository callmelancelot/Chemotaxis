Cell [] dots;
eater dan;
int j,k,f,g,a,b;
int o = f+a;
int p = f-a;
int q = g+b;
int w = g-b;
 void setup()   
 {     
 	size(800,600);
  background(0);
  dots = new Cell[100];
  for(int i = 0; i < dots.length ; i++){
    dots[i] = new Cell();
  }
  dan = new eater();
 }   
 void draw(){  
  background(0);
 	for(int i = 0; i < dots.length ; i++){
    dots[i].show();
    dots[i].eaten();
    dots[i].walk();
  }
  dan.show();
  dan.move();
 }  
 
 class Cell{
   int CellX,CellY,CellO,CellP;
   Cell(){
     CellX = (int)(Math.random()*800);
     CellY = (int)(Math.random()*600);
     CellO = 10;
     CellP = 10;
   }
   void walk(){
     CellX += (int)(Math.random()*5)-2;
     CellY += (int)(Math.random()*5)-2;
     j = CellX;
     k = CellY;
     o = f+a;
     p = f-a;
     q = g+b;
     w = g-b;
   }
   void show(){
     fill(255);
     ellipse(CellX,CellY,CellO,CellP);
   }
   void eaten(){
     if(CellX<o && CellX>p){
       if(CellY<q && CellY>w){
          CellX = 5000;
          CellY = 5000;
       }
     }
   }
 }
 
 
 class eater{
   int eaterX,eaterY,eaterO,eaterP;
   eater(){
     eaterX=400;
     eaterY=300;
     eaterO=35;
     eaterP=35;
     a = eaterO;
     b = eaterP;
   }
   void move(){
     eaterX=mouseX;
     eaterY=mouseY;
     f = eaterX;
     g = eaterY;
   }
   void show(){
     fill(255,255,170);
     ellipse(eaterX,eaterY,eaterO,eaterP);
     a = eaterO;
     b = eaterP;
     f = eaterX;
     g = eaterY;
   }
 }
   
   
