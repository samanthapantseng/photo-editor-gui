class ColorWheel {

  //variables globales al objeto ------------------
  float miX, miY; //centro del colorWheel
  int miRadio = 11*width/68; //Radio del circulo
  int miAncho = width/68;
  boolean estaEncima = false;
  boolean wheelEncima;
  boolean wheelSeleccionada = false;
  float miAnguloActual = PI;
  float anguloAtan;

  // constructor ----------------------------------
  ColorWheel (float _x, float _y) {
    miX = _x;
    miY = _y;
  }

  // métodos ----------------------------------
  void display () {
    // para definir si el mouse está encima del arco
    float ditanciaDelMouse = dist(mouseX, mouseY, miX, miY);
    // define la zona sensible del control
    estaEncima = (ditanciaDelMouse < miRadio/2 && ditanciaDelMouse > miRadio/2 - miAncho);
    wheelEncima = (ditanciaDelMouse < 1.7*height/68);

    // despliega la imagen que define el marco del slider polar
    image(fondoColorWheel, (25*width/68)-(fondoColorWheel.width/2), (19.5*height/68)-(fondoColorWheel.height/2));
    fondoColorWheel.resize(11*width/68, 11*width/68);


    // define cuál es el HUE seleccionado a partir del ángulo actual
    float hue = map (miAnguloActual, 0, TWO_PI, 0, 360); // mapea el HUE entre naranha y el rojo puro
    color colorSeleccionado = color(hue, 100, 100);

    // dibuja el círuclo que funciona como el extremo de la aguja
    stroke(#ffffff); // color gris 50%
    strokeWeight(0.1*width/68);
    fill(#ffffff, 40);
    // coordenadas polares del centro del círculo
    float xDeBoton = miX + cos(miAnguloActual) * (miRadio/2 - 0.5*width/68);
    float yDeBoton = miY + sin(miAnguloActual) * (miRadio/2 - 0.5*width/68);
    ellipse (xDeBoton, yDeBoton, 0.5*width/68, 0.5*width/68);


    // dibuja el círculo central que activa el Filtro y cambia de color con la selección
    noStroke();
    if (wheelEncima) {
      //stroke(colorSeleccionado,80);
      fill(colorSeleccionado, 80);
      ellipse (miX, miY, 1.7*height/68, 1.7*height/68);
    } else {
      fill(colorSeleccionado);
      ellipse (miX, miY, 1.7*height/68, 1.7*height/68);
    }

    if (wheelSeleccionada) {
      stroke(colorSeleccionado);
      noFill();
      ellipse (miX, miY, 2.5*height/68, 2.5*height/68);
    }
  } // end of render

  // eventos ----------------------------------
  void dragSobreMi() {
    if (estaEncima) {
      anguloAtan = atan2(mouseY-miY, mouseX-miX); // coordenadas del mouse trasladados al centro de la pantalla

      if (anguloAtan<0) anguloAtan = PI + (PI-abs(anguloAtan)); // cambia los valores negativos hacia el 1º y 2º cuadrante
      miAnguloActual = anguloAtan;
    }
  } // end of  dragSobreMi

  void clickSobreMi () {
    if (wheelEncima) wheelSeleccionada = !wheelSeleccionada;
  }
  void dibujaTint () {
    if (wheelSeleccionada) {
      float hue = map (miAnguloActual, 0, TWO_PI, 0, 360); // mapea el HUE entre naranha y el rojo puro
      color colorSeleccionado = color(hue, 100, 100);
      noStroke();
      fill(colorSeleccionado, 80);
      rect(39*width/68, 9*width/68, 24*width/68, 24*width/68);
    }
  }
} // end of class
