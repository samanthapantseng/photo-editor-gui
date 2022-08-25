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
PImage fotoGuardada;
int numeroFoto = 1;

FotoBoton[] fotoBotones;
FiltroBoton[] filtros;
MarcoBoton[] marcos;

Boton save;

void setup() {

  fullScreen();

  fotoBotones = new FotoBoton[4];    
  fotoBotones[0] = new FotoBoton((39+0)*width/68, 4*width/68, loadImage("fotoSam.png"), loadImage("fotoSam.png"));
  fotoBotones[1] = new FotoBoton((39+5)*width/68, 4*width/68, loadImage("fotoLeslie.png"), loadImage("fotoLeslie.png"));
  fotoBotones[2] = new FotoBoton((39+10)*width/68, 4*width/68, loadImage("fotoVale.png"), loadImage("fotoVale.png"));
  fotoBotones[3] = new FotoBoton((39+15)*width/68, 4*width/68, loadImage("fotoElke.png"), loadImage("fotoElke.png"));
  
  fotoSeleccionada = fotoBotones[0].fotoGrande;
   
  filtros = new FiltroBoton[4];    
  filtros[0] = new FiltroBoton(5*width/68, loadImage("ranita.png"), "Sepia");
  filtros[1] = new FiltroBoton(8.5*width/68, loadImage("ranita.png"),"B&W");
  filtros[2] = new FiltroBoton(12*width/68, loadImage("ranita.png"),"Frío");
  filtros[3] = new FiltroBoton(15.5*width/68, loadImage("ranita.png"),"X-ray");
  
  marcos = new MarcoBoton[4];    
  marcos[0] = new MarcoBoton(22*width/68, loadImage("ranita.png"), "Blanco");
  marcos[1] = new MarcoBoton(25.5*width/68, loadImage("ranita.png"), "Foto");
  marcos[2] = new MarcoBoton(29*width/68, loadImage("ranita.png"), "Fiesta");
  marcos[3] = new MarcoBoton(32.5*width/68, loadImage("ranita.png"),"Flores"); 
  
  save = new Boton(59*width/68, 34*width/68, 4*width/68, 2*width/68, "SAVE");
}

void draw() {
  
  background(#272727); 
  
  // fotos
  for (int i = 0; i < fotoBotones.length; i++) {
    fotoBotones[i].dibujar();
  }  
  image(fotoSeleccionada, 39*width/68, 9*width/68);
  
  // filtros
  for (int i = 0; i < filtros.length; i++) {
    filtros[i].dibujar();
  }
  
  // marcos
  for (int i = 0; i < marcos.length; i++) {
    marcos[i].dibujar();
        
    textSize(width/68);
    textAlign(LEFT);
    text("FILTERS",2*width/68,4.5*width/68);
    
    textSize(width/68);
    textAlign(LEFT);
    text("FRAMES",2*width/68,21.5*width/68);    
  }
  
  // boton
  save.dibujar(mouseX, mouseY);
}

void mousePressed() {
  if (mouseButton == LEFT) {
    for (int i = 0; i < fotoBotones.length; i++) {      
      if (fotoBotones[i].clicked(mouseX, mouseY) == true) {
        fotoSeleccionada = fotoBotones[i].fotoGrande;        
      }
    }
    
    if (save.estaEncima) {
      fotoGuardada = get(39*width/68, 9*width/68, 24*width/68, 24*width/68);
      fotoGuardada.save("tuFotoEditada" + nf(numeroFoto, 2) + ".jpg");
      numeroFoto++;
    } 
  }
}
