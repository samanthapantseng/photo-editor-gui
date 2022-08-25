/* Tecnológico de Costa Rica
   Escuela de Diseño Industrial
   D7 Visual - Tarea 2 GUI
   Valeria Navarro - 2018254437
   Samantha Pan Tseng  - 2019065194
   Elke Segura Badilla - 2018086696
   Leslie Valeria Serrano - 2019159088
*/

PImage add;
PImage fotoSeleccionada;

FotoBoton[] fotoBotones;

void setup() {

  fullScreen();

  fotoBotones = new FotoBoton[4];    
  fotoBotones[0] = new FotoBoton((39+0)*width/68, 4*width/68, loadImage("fotoSam.png"), loadImage("fotoSam.png"));
  fotoBotones[1] = new FotoBoton((39+5)*width/68, 4*width/68, loadImage("fotoLeslie.png"), loadImage("fotoLeslie.png"));
  fotoBotones[2] = new FotoBoton((39+10)*width/68, 4*width/68, loadImage("fotoVale.png"), loadImage("fotoVale.png"));
  fotoBotones[3] = new FotoBoton((39+15)*width/68, 4*width/68, loadImage("fotoElke.png"), loadImage("fotoElke.png"));
  add = loadImage("add.png");
  
  fotoSeleccionada = fotoBotones[0].fotoGrande;
  
  add.resize(4*width/68, 4*width/68);
}

void draw() {
  background(#F5FFFC); 
  for (int i = 0; i < fotoBotones.length; i++) {
    fotoBotones[i].dibujar();
  }  
  image(add, (39+20)*width/68, 4*width/68);
  image(fotoSeleccionada, 39*width/68, 9*width/68);
}

void mousePressed() {
  if (mouseButton == LEFT) {
    for (int i = 0; i < fotoBotones.length; i++) {      
      if (fotoBotones[i].clicked(mouseX, mouseY) == true) {
        fotoSeleccionada = fotoBotones[i].fotoGrande;        
      }
    }
  }
}
