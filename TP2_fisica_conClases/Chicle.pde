


class Chicle extends FCircle {

  Chicle(float _d) {
    super(_d);
  }

  void inicializar(float _x, float _y) {
    setName("chicle");
    setPosition(_x, _y);
    setStatic(false);
    setFillColor(#FC61C6);
   //stroke(#FF08A9);
   setNoStroke();
    setVelocity(0, 200);
  }



  // si mousepresed: void inicializar
  //    FBody pressed = world.getBody(mouseX, mouseY);
  //if (pressed == Chicle) {
}
