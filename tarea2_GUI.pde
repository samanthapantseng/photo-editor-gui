/* Tecnológico de Costa Rica
   Escuela de Diseño Industrial
   D7 Visual - Tarea 2 GUI
   Valeria Navarro - 2018254437
   Samantha Pan Tseng  - 2019065194
   Elke Segura Badilla - 2018086696
   Leslie Valeria Serrano - 2019159088
*/

PImage add;

FotoBoton[] fotoBotones;

void setup() {

  fullScreen();

  fotoBotones = new FotoBoton[4];    
  fotoBotones[0] = new FotoBoton((39+0)*width/68, 4*width/68, loadImage("fotoSam.png"));
  fotoBotones[1] = new FotoBoton((39+5)*width/68, 4*width/68, loadImage("fotoLeslie.png"));
  fotoBotones[2] = new FotoBoton((39+10)*width/68, 4*width/68, loadImage("fotoVale.png"));
  fotoBotones[3] = new FotoBoton((39+15)*width/68, 4*width/68, loadImage("fotoElke.png"));
  add = loadImage("add.png");
  
  add.resize(4*width/68, 4*width/68);
}

void draw() {
  
  for (int i = 0; i < fotoBotones.length; i++) {
    fotoBotones[i].dibujar();
  }  
  image(add, (39+20)*width/68, 4*width/68);
}
