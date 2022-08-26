class MarcoBoton {
  
  PImage fotorana;
  int size;
  float px; // posición x
  float py; // posición y
  float pfx; // posición foto botón
  float pfy;// posición foto botón
  float ancho;  // ancho
  float alto; // largo
  color fill; // relleno
  boolean estaEncima, estaSeleccionado, dibujarMarco;
  String nombre;
  PImage marco;
  
  public MarcoBoton(float _py, PImage _foto, String _nombre, PImage _marco) {
    //tipo = _tipo;
    px = 2*width/68; 
    py = _py;
    pfx = 3*width/68;
    pfy = py + 0.5*width/68;
    ancho = 12*width/68;
    alto = 3*width/68;
    fill = color(#0F0F0F);
    fotorana = _foto;
    size = 2*width/68;
    fotorana.resize(size, size);
    nombre = _nombre;
    
    estaSeleccionado = false;
    marco = _marco;
    dibujarMarco = false;
  }
  
  void dibujar() {
  // verifica si el mouse esta cerca del objeto y cambia su estado al hover
    if (mouseX > px && mouseX < px+ancho && mouseY < py+alto && mouseY > py) {
      estaEncima = true;
    } else {
      estaEncima = false;
    }
    
    noStroke();
    
    if (estaEncima) {
    //con hover
      fill(#6C6C6C);
      rect(px,py,ancho,alto);
      
    // fill de texto
      fill(#FFFFFF);
    }     
    
    else {
      //sin hover
      fill(#0F0F0F);
      rect(px,py,ancho,alto);
      
      // fill de texto
      fill(#FFFFFF);    
    }
      
    if (estaSeleccionado) {
      fill(#D4D4D4);
      rect(px,py,ancho,alto);
      
      // fill de texto
      fill(#0F0F0F);
    }
    
    image(fotorana,pfx, pfy);
    
    textSize(0.7*width/68);
    textAlign(LEFT);
    text(nombre, pfx+3*width/68, pfy+1.2*width/68);    
    }
  
  void displayMarco() {
    if (dibujarMarco == true) {
     marco.resize(24*width/68, 24*width/68);
     image(marco,39*width/68, 9*width/68);         
    }
  }
}
