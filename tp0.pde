PImage imagenuno;
void setup(){
  background(255);
  size(800, 400);
  imagenuno = loadImage("imagen tortuga.jpeg");
  image(imagenuno, 0, 0);
}

void draw(){
  //Cuerpo tutuga
  fill(6, 206, 31);
  //pata izquierda de arriba
   ellipse(500, 150, 50, 70);
   //pata derecha de arriba
  ellipse(700, 150, 50, 70);
  //pata derecha de abajo
  ellipse(680, 300, 80, 70);
  //pata izquierda de abajo
  ellipse(520, 300, 80, 70);
  //cabeza
  ellipse(595, 50, 70, 90);
  fill(255);
  fill(0, 0, 0);
  //ojo izquierdo
  ellipse(580, 30, 10, 15);
  //ojo derecho
  ellipse(610, 30, 10, 15);
  fill(147, 126, 4);
  //caparazon
  strokeWeight(2);
  ellipse(600, 200, 200, 250);
  
  //linea de arriba del rombo
  line(600, 75, 600, 145);
  //linea de abajo del rombo
  line(600, 250, 600, 325);
  //linea de abajo del lado izq del rombo
  line(600, 250, 550, 230);
  //linea de arriba del lado izq del rombo
  line(600, 145, 550, 160);
  // linea vertical del rombo lado izq
  line(550, 230, 550, 160);
  //linea de abajo del lado derecho del rombo
  line(600, 250, 650, 230);
  //linea de arriba del lado derecho del rombo
  line(600, 145, 650, 160);
  //linea vertical del lado derecho
  line(650, 230, 650, 160);
  //linea caparazon lado izq abajo
  line(550, 230, 510, 255);
  //linea caparazon lado izq arriba
  line(550, 160, 517, 130);
  //linea caparazon lado derecho arriba
  line(650, 160, 683, 130);
  //linea caparazon lado derecho abajo
  line(650, 230, 690, 250);
    fill(6, 206, 31);
  triangle(580, 324, 620, 324, 600, 350);

  
}
