class FotoBoton {

  PImage foto;
  float x, y;
  int size;
  boolean estaEncima, isClicked;
  
  public FotoBoton(float _x, float _y, PImage _foto) {
    
    x = _x;
    y = _y;
    size = 4*width/68;
    foto = _foto;
    foto.resize(size, size);
  }

  void dibujar() {
    
    image(foto, x, y);
  }
}
