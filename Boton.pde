class Boton {

  float x, y, w, h;
  color clr, textClr;
  String nombre;
  boolean estaEncima;
  
  public Boton(float _x, float _y, float _w, float _h, String _nombre){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    clr = color(#0F0F0F);
    textClr = color(#6C6C6C);
    nombre = _nombre;
    estaEncima = false;
  }
    
  void dibujar() {
    if (estaEncima == true){
      fill(#D4D4D4);
      rect(x, y, w, h);
          
      fill(#0F0F0F);
    } else {
      fill(clr);
      rect(x, y, w, h);
          
      fill(textClr);
    }
    textSize(width/80);
    textAlign(CENTER, CENTER);
    text(nombre, x + w/2, y + h/2 - width/280);
    
    if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h){
      estaEncima = true;
    } else {
      estaEncima = false;
    }
  }  
}
  
