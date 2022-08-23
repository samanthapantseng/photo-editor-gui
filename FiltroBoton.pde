class FiltroBoton {
  PImage fotorana;
  int size;
  float px; // posición x
  float py; // posición y
  float pfx; // posición foto botón
  float pfy;// posición foto botón
  float ancho;  // ancho
  float alto; // largo
  color fill; // relleno
  //boolean presionado = false;
  boolean estaEncima;
  
  
  public FiltroBoton(float _py, PImage _foto) {
    //tipo = _tipo;
    px = 2*width/68; 
    py = _py;
    pfx = 3*width/68;
    pfy = py + 0.5*width/68;
    ancho = 12*width/68;
    alto = 3*width/68;
    fill = color(#6C6C6C);
    fotorana = _foto;
    size = 2*width/68;
    fotorana.resize(size, size);
  }
  
  void dibujar() {
    // verifica si el mouse esta cerca del objeto y cambia su estado al hover
    boolean mouseDentro = (mouseX > px && mouseX < ancho && mouseY > py && mouseY < alto);
    if (mouseDentro) estaEncima = true;
    else estaEncima = false;
  
    
    noStroke();
  
      if (estaEncima) { // estado en reposo CON hover
        fill(#000000);
      }
      else { // estado en reposo SIN hober
        fill(#6C6C6C);
      }
    // }
    rect(px,py,ancho,alto);
    image(fotorana,pfx, pfy);
    
  }
}
