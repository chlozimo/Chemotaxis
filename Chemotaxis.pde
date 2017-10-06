Bacteria[] colony;
 void setup()   
 { 
   size(500,500);
   colony = new Bacteria[500];
   for(int i = 0; i < colony.length; i++)
     colony[i] = new Bacteria();
 }   
 void draw()   
 {    
   background(0,5,50);
   for( int i = 0; i < colony.length; i++)
   {
     colony[i].move();
     colony[i].show();
   }
 }  
 class Bacteria    
 {     
   int myColor, myX, myY;
   Bacteria()
   {
   myX = 250;
   myY = 250;
   }
   void move()
   {
     myX = myX + (int)(Math.random()*5) -2; 
     myY = myY + (int)(Math.random()*5) -2;
     myColor = ((int)(Math.random() * 255));
   }
      void show()
   {
     fill(150,150,0);
     noStroke();
     ellipse(myX,myY,30,30);
   }
 }    
