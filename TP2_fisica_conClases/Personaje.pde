class Personaje extends FBox
{
  Boolean leftPressed, rightPressed, upPressed;
  Boolean canJump;
  Boolean vivo;
  
  Personaje(float _w, float _h)
  {
    super(_w, _h);
  }
  
  void inicializar(float _x, float _y) {
    leftPressed = false;
   // downPressed = false;
    rightPressed = false;
    upPressed = false;
    canJump = false;
    vivo = true;
    setFillColor(#1F73DE);
   // setStroke(#CE384A);
    //setStrokeWeight (3);
       setNoStroke();
    
    setName("personaje");
    setPosition(_x, _y);
    setDamping(0);
    setRestitution(0);
    setFriction(0);
    setRotatable(false);
  }
  
  void actualizar()
  {
    if (vivo)
    {
      //println(leftPressed);
      if (leftPressed)
      {
        setVelocity(-90, getVelocityY());
        //setPosition(getX()-10, getY());
      }
      if (rightPressed)
      {
        setVelocity(90, getVelocityY());
        //setPosition(getX()+10, getY());
      }
      if (!leftPressed && !rightPressed)
      {
        setVelocity(0, getVelocityY());
      }
      if (upPressed && canJump)
      {
        setVelocity(getVelocityX(), -260);
        canJump = false;
      }
    //if (downPressed) {
    //  setSensor (true);}
  }
  }
  
  void matar()
  {
    vivo = false;
  }

}
