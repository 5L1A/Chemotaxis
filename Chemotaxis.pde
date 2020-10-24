Bacteria[] mary = new Bacteria[200];
void setup()   
 {     
   size(900,900);
   for(int i = 0; i < mary.length; i++){
     mary[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   background(205,239,250);
   for(int i = 0; i < mary.length; i++){
     mary[i].show();
     mary[i].move();
   } 
 }  
 class Bacteria    
 {     
   int myColor, myX, myY;
   Bacteria(){
     myX = (int) (Math.random()*700)+10;
     myY = (int) (Math.random()*700)+10;
     myColor = color((int)(Math.random()*300), (int)(Math.random()*300),(int)(Math.random()*300)) ;
   }
   void move(){
     myX = myX + (int) (Math.random()*3)-1;
     myY = myY + (int)(Math.random()*3)-1;
   }
   void show(){
     fill(myColor);
     stroke(myColor*12);
     ellipse(myX, myY, 60,60);
    if(mouseX > myX){
       myX = myX + (int)(Math.random()*3) + 1;
           
     } else {
       myX= myX + (int)(Math.random()*3) - 4;
     }
   if(mouseY > myY){
       myY = myY + (int)(Math.random()* 3) + 1;
           
     } else {
       myY= myY + (int)(Math.random()* 3) - 3;
     }
     fill(0);
     text("Colorful pet more loyal than your friends for just $49.99 in monthly payments. A little slow but always there.",  125, 810);
     text("Stay in one spot until all of them are stacked on top and then move your mouse around the screen.", 145, 850);
   }
 }    
