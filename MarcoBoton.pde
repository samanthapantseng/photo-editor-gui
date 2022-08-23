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
  //boolean presionado = false;
  boolean estaEncima, mouseDentro;
  String nombre;
  
  
  public MarcoBoton(float _py, PImage _foto, String _nombre) {
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
    nombre = _nombre;
  }
  
  void dibujar() {
    // verifica si el mouse esta cerca del objeto y cambia su estado al hover
    boolean mouseDentro = ( mouseX > px && mouseX < px+ancho && mouseY < py+alto && mouseY > py);
    if (mouseDentro) estaEncima = true;
    else estaEncima = false;
  
    
    noStroke();
    if (estaEncima) fill(#000000); // estado en reposo CON hover
    else fill(#6C6C6C); // estado en reposo SIN hover
      

    rect(px,py,ancho,alto);
    image(fotorana,pfx, pfy);
    
    fill(#FFFFFF);
    textSize(0.7*width/68);
    textAlign(LEFT);
    text(nombre, pfx+3*width/68, pfy+1.2*width/68);
    
  }
}
