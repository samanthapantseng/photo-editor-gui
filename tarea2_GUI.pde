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
FiltroBoton[] filtros;
MarcoBoton[] marcos;

void setup() {

  fullScreen();

  fotoBotones = new FotoBoton[4];    
  fotoBotones[0] = new FotoBoton((39+0)*width/68, 4*width/68, loadImage("fotoSam.png"));
  fotoBotones[1] = new FotoBoton((39+5)*width/68, 4*width/68, loadImage("fotoLeslie.png"));
  fotoBotones[2] = new FotoBoton((39+10)*width/68, 4*width/68, loadImage("fotoVale.png"));
  fotoBotones[3] = new FotoBoton((39+15)*width/68, 4*width/68, loadImage("fotoElke.png"));
  add = loadImage("add.png");
  
  add.resize(4*width/68, 4*width/68);
  
  filtros = new FiltroBoton[4];    
  filtros[0] = new FiltroBoton(5*width/68, loadImage("ranita.png"));
  filtros[1] = new FiltroBoton(8.5*width/68, loadImage("ranita.png"));
  filtros[2] = new FiltroBoton(12*width/68, loadImage("ranita.png"));
  filtros[3] = new FiltroBoton(15.5*width/68, loadImage("ranita.png"));
  
  marcos = new MarcoBoton[4];    
  marcos[0] = new MarcoBoton(22*width/68, loadImage("ranita.png"));
  marcos[1] = new MarcoBoton(25.5*width/68, loadImage("ranita.png"));
  marcos[2] = new MarcoBoton(29*width/68, loadImage("ranita.png"));
  marcos[3] = new MarcoBoton(32.5*width/68, loadImage("ranita.png"));
  
  
  
}

void draw() {
  
  for (int i = 0; i < fotoBotones.length; i++) {
    fotoBotones[i].dibujar();
  }  
  image(add, (39+20)*width/68, 4*width/68);
  
  for (int i = 0; i < filtros.length; i++) {
    filtros[i].dibujar();
}
  
  for (int i = 0; i < marcos.length; i++) {
    marcos[i].dibujar();
}
}
