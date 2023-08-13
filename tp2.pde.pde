boolean ef;
PImage ilusion;
void setup(){
 size(800,400);
 ilusion = loadImage("imagen.jpeg"); 
 rectMode(CENTER);
 ef=false;
}


color col(float px){
 
  float r=0;
  for(int g=1; g<2; g++)
   for(int f=1; f<2; f++)
      r = map(px,g*200,f*400,50,255);
//Ocultar texto citado

         
 
  color c=color(r,20,20);
 
 return c;
}  





void efect(boolean ef){
  int lad=900;
 
  for (int a = 0; a < 350; a++) {
 
      if(a%2 == 0){
        if(ef)
          fill(col(mouseX));
          else
            fill(0);
       } else{
          fill(255);}
          if(ef){
           rect(mouseX,mouseY,lad,lad);
           
          }else
              rect(600,200,lad,lad);
       if(lad > 1)
      lad = lad -8;
  }
 
  fill(100);
  rect(200,200,400,400);
}  




void draw(){
  
  background(100);
  
  efect(ef);
 image(ilusion,0,0);
}



void mousePressed(){
 
 
  ef=true;
 
}  


void keyPressed(){
 
  if(key=='r')
   ef=false;
}
