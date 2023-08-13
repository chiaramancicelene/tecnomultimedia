int estado;
int c = 12;
PImage[] pantalla= new PImage[c];
boolean apreteBotonMenu;

void setup (){
  estado = 0;
  size (600,600);
  apreteBotonMenu = true;
  for (int i = 0; i < c; i++){
  pantalla[i] = loadImage("imagen-"+i+ ".PNG");
  }
}
void TextoP(String Texto,int tam,int PosTX,int PosTY){
  textAlign(CENTER,CENTER);
  fill(255);
  textSize(tam);
  text(Texto,PosTX,PosTY);
}
void draw(){
  switch(estado){
  case 0 : 
   image (pantalla[estado],0,0);
    //posicion del texto en pantalla
    TextoP("INICIO",75,300,50);
    TextoP("Pulse en cualquier lugar de la pantalla para avansar",20,300,500);
    TextoP ("En pantallas de eleccion, presione a la izquierda o derecha para elegir camino",15,300,520);
     if ( dist(mouseX, mouseY, 100, 100)<=50 ) {
       fill(60, 203, 75);
       estado = 12;
     }  else {
     fill(80, 162, 89);
    }
    circle( 100, 100, 100 );
    TextoP("creditos",20, 100, 100);
    break;
case 1 :
  image(pantalla[estado],0,0) ;
  TextoP("Había una vez, un patito que salió de su huevo...",20, 300, 100);
  break;
 case 2:
 image(pantalla[estado],0,0);
 TextoP("Pero su madre se dio cuenta de",20, 300, 80);
 TextoP("que este patito era diferente a sus hermanos",20, 300, 100);
 TextoP ("Click para que la madre lo rechaze",15,120,550);
 TextoP ("Click para que la madre lo acepte",15,480,550);
break;
case 3: 
  image(pantalla[estado],0,0);
   TextoP("El patito se esfrozó por ser incluido, a pesar de ser feo,",20, 300, 80);
   TextoP("pero su madre finalmente rechazo a su hijo por ser diferente,",20, 300, 100);
   TextoP("echandolo de su vida para que crezca por su cuenta",20, 300, 120);
  break;
case 4: 
  image(pantalla[estado],0,0);
   TextoP("La mama de este patito feo, lo aceptó como es,",20, 300, 80);
   TextoP("criandolo y mimandolo junto a sus hermanos,",20, 300, 100);
   TextoP("demostandoles a sus hijos que hay que",20, 300, 120);
   TextoP("aceptarlo sin importar las apariencias.",20, 300, 140);
  break;
case 5: 
  image(pantalla[estado],0,0);
  TextoP("El patito feo se fue triste, caminando sin rumbo hacia...",20, 300, 100);
   TextoP ("Click para camino A", 15,120,550);
   TextoP ("Click para camino B",15,480,550);
  break;
case 6: 
  image(pantalla[estado],0,0);
 TextoP("Un camino que lo llevó a encontrarse con una",20, 300, 60);
 TextoP("familia de pájaros los cuales lo recibieron con gusto",20, 300, 80);
  break;
case 7: 
  image(pantalla[estado],0,0);
    TextoP("La mamá de los polluelos decidió adoptar al patito feo",20, 300, 60);
    TextoP("y criarlo como uno de los suyos.",20, 300, 80);
  break;
case 8: 
  image(pantalla[estado],0,0);
    TextoP("Un camino que lo llevó a encontrarse con un pato gigante ",20, 300, 80);
    TextoP("sin saber que éste era de madera",20, 300, 100);
  break;
case 9: 
  image(pantalla[estado],0,0);
    TextoP("El patito se asustó al darse cuenta de que el pato gigante",20, 300, 60);
    TextoP("era de madera, y se puso a llorar desesperado por no",20, 300, 80);
    TextoP("encontrar una familia de verdad que lo quiera",20, 300, 100);
  break;
case 10: 
  image(pantalla[estado],0,0);
    TextoP("Una familia de cisnes escuchó el llanto desconsolado",20, 300, 40);
    TextoP("de este patito solitario, y decidieron acercarse",20, 300, 60);
  break;
case 11: 
  image(pantalla[estado],0,0);
    TextoP("El patito feo finalmente entiende que no es un patito,",20, 300, 60);
    TextoP("sino, que es un bello cisne, siendo asi adoptado por",20, 300, 80);
    TextoP("esta familia, para crecer feliz junto a los suyos.",20, 300, 100);
  break;
case 12: //CREDITOS
    image(pantalla[0], 0, 0);
    //BOTONES
    if ( dist(mouseX, mouseY, 300, 525)<=50 ) {
      fill(60, 203, 75);
      estado = 0;
    } else {
      fill(80, 162, 89);
    }
    circle( 300, 525, 100 );
    TextoP("Menu",30, 300, 525);
    TextoP("El Patito feo",20, 200, 100);
    TextoP("Mancini Chiara",20, 150, 140);
    TextoP("Legajo: 93529/0",20, 150, 160);
    TextoP("Comision 2",20, 150, 180);
    TextoP("Imagenes: Corto de Disney",20, 150, 240);
    TextoP("Textos: ChatGPT",20, 150, 260);
  break;
}
}

void mousePressed() {  //aca se programan los botones
// control del mouse 
  if ( estado == 0) {
    estado = 1;
  }else if(estado ==1){
    estado = 2;
  }else if (estado == 2){
   if ( mouseX < width/2 ) {  //mitad izquierda de la pantalla
      estado = 3;
    }
    if ( mouseX > width/2 ) {  //mitad derecha de la pantalla
      estado = 4;
    }
  }
  else if (estado == 4){
    estado = 12;
   }
  else if (estado == 3 ){ 
    estado = 5;
  }
  else if(estado == 5){
     if ( mouseX < width/2 ) {  //mitad izquierda de la pantalla
      estado = 6;
    }
    if ( mouseX > width/2 ) {  //mitad derecha de la pantalla
      estado = 8;
    }
  } 
  else if (estado == 6 ){
    estado =  7;
  }
  else if (estado == 8 ){
    estado =  9;
  }else if (estado == 9 ){
    estado =  10;
  }else if (estado == 10 ){
    estado =  11;
  } 
  else if (estado == 11 ){
    estado =  12;
  }
  else if (estado == 7){
    estado = 12;
  }
  }
