class StickersArrastrables {

  //variables globales al objeto ------------------
  float miX, miY;
  float miTamagno;
  boolean estaEncima, estaSeleccionado, estaCapturado, soloHizoClick;
  float offsetX, offsetY;
  PImage miImagen;



  // constructor ----------------------------------
  StickersArrastrables (float _x, float _y, PImage _mI) {
    miX = _x;
    miY = _y;
    miImagen = _mI;
    miTamagno = 75; // tamaño de las imágenes
    estaEncima = false;
    estaSeleccionado = false;
    estaCapturado = false;
    soloHizoClick = false;
    offsetX = 0;
    offsetY = 0;
  } 



  // métodos ----------------------------------
  void display() {
    estaEncima = mouseX>miX-miTamagno / 2 && mouseX<miX+miTamagno / 2 && mouseY>miY-miTamagno / 2 && mouseY<miY+miTamagno / 2;
   
    
    
    // despliega la imagen
    image(miImagen, miX, miY);
    
   

    stroke(0, 0, 15); // background color
    noFill();
    if (this.estaEncima) strokeWeight (2);
    else noStroke();
    strokeWeight (0);
    rect (miX, miY, miTamagno+5, miTamagno+5);

    if (estaSeleccionado) {
      noFill();
      stroke (0, 0, 15, 0 ); 
      strokeWeight (0);
      rect (miX, miY, miTamagno+5, miTamagno+5);
    }
  }  
  // eventos ----------------------------------
  void atrapandome () {
    if (estaEncima) {
      estaCapturado  = true;
      offsetX = mouseX-miX;
      offsetY = mouseY-miY;
      soloHizoClick = true;
    } else {
      estaCapturado = false;
    }
  }

  void arrastrandome () {
    if (estaCapturado) {
      miX = mouseX-offsetX;
      miY = mouseY-offsetY;
      soloHizoClick = false;
    }
  }

  void soltandome () {
    if (soloHizoClick) {
      estaSeleccionado = !estaSeleccionado;
      soloHizoClick = false;
    }  
    estaCapturado = false;
  }
}
