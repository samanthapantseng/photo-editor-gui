class FiltroBoton {
  PImage fotorana;
  int size;
  float px; // posición x
  float py; // posición y
  float pfx;
  float pfy;
  float ancho;  // ancho
  float largo; // largo
  color fill; // relleno
  
  
  public FiltroBoton(float _py, PImage _foto) {
    //tipo = _tipo;
    px = 2*width/68; 
    py = _py;
    pfx = 3*width/68;
    pfy = py + 0.5*width/68;
    ancho = 12*width/68;
    largo = 3*width/68;
    fill = color(#6C6C6C);
    fotorana = _foto;
    size = 2*width/68;
    fotorana.resize(size, size);
  }
  
  void dibujar() {
    noStroke();
    fill(fill);
    rect(px,py,ancho,largo);
    image(fotorana,pfx, pfy);
    
  }
}
