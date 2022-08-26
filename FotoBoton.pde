class FotoBoton {

  PImage foto, fotoGrande;
  float x, y;
  int size;

  public FotoBoton(float _x, float _y, PImage _foto, PImage _fotoGrande) {

    x = _x;
    y = _y;
    size = 4*width/68;
    foto = _foto;
    foto.resize(size, size);
    fotoGrande = _fotoGrande;
    fotoGrande.resize(24*width/68, 24*width/68);
  }

  void dibujar() {
    image(foto, x, y);
  }

  boolean clicked(float mX, float mY) {
    if (mX > x && mX < x + size && mY > y && mY < y + size) {
      return true;
    }
    return false;
  }
}
