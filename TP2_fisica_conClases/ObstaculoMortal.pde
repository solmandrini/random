class ObstaculoMortal extends Obstaculo
{
  ObstaculoMortal(float _w, float _h)
  {
    super(_w, _h);
  }
  
  void inicializar(float _x, float _y)
  {
    setName("obstaculo_mortal");
    setPosition(_x, _y);
    setStatic(true);
  }
}
