//Mancini Chiara
// Link de video: https://youtu.be/7EacA274Cpc


PImage imagenoptica;
float posicionX = 400;
float posicionY = 0;
float velocidadX = 0.8;
float velocidadY = 0.8;

void setup() {
  size(800, 400);
  imagenoptica = loadImage("imagen_ilusion.jpeg");
}

void draw() {
  posicionX = posicionX+velocidadX;
  posicionY = posicionY+velocidadY;
    background(0);
  strokeWeight(3);
  stroke(255);
  for (int a=0; a<=100; a+=1) {
    rect(posicionX, posicionY, a*15, a*15);
    rectMode(CENTER);
    noFill();
   }
         image(imagenoptica, 0, 0, 400, 400);

 }
void keyPressed() {
  if (posicionX>400); 
  if (posicionY>400);
  posicionX=400;
  posicionY=0;
 }
