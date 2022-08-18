class Obstaculo extends FBox
{
  Obstaculo(float _w, float _h)
  {
    super(_w, _h);
  }
  
  void inicializar(float _x, float _y)
  {
    setName("obstaculo");
    setPosition(_x, _y);
    setStatic(false);
  }
}
