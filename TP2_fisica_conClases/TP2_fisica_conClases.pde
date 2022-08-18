import fisica.*;

FWorld world;
Personaje kid;
ArrayList <Plataforma> plataformas;
Chicle chicles;
//Obstaculo caja, explosivo;

void setup()
{
  size(800, 600);

  Fisica.init(this);  
  world = new FWorld();

  world.setEdges(#EEDBFC);
  // world.setGravity(0,0);
  //world.bottom.setName("plataforma");
  chicles = new Chicle(15);
  kid = new Personaje(40, 50);
  kid.inicializar(40, height * 0.75);
  world.add(kid);

  plataformas = new ArrayList <Plataforma> ();
  for (int i = 0; i < 5; i++)
  {
    Plataforma p = new Plataforma(300, 16);
    p.inicializar(width/2, height - 100 - (i * 100));
    world.add(p);
    plataformas.add(p);
  }
  Plataforma p = new Plataforma(width, 16);
  p.inicializar(width / 2, height - 8);
  world.add(p);
  plataformas.add(p);
  p.setFillColor(#F79B61);
  //caja = new Obstaculo(40, 40);
  //caja.inicializar(160, height - 60);
  //world.add(caja);

  //explosivo = new ObstaculoMortal(40, 40);
  //explosivo.inicializar(plataformas.get(2).getX(), plataformas.get(2).getY() - explosivo.getHeight() / 2 - plataformas.get(2).getHeight() / 2);
  //world.add(explosivo);
}

void draw()
{
  background(#EEDBFC);

  kid.actualizar();

  world.step();
  world.draw();
}

void keyPressed()
{
  if (key == 'a') {
    kid.leftPressed = true;
  }
  if (key == 'd') {
    kid.rightPressed = true;
  }
  if (key == 'w') {
    kid.upPressed = true;
  }
  //if (key == 's') {
  //  kid.downPressed = true;
  //}
}

void keyReleased()
{
  if (key == 'a') {
    kid.leftPressed = false;
  }
  if (key == 'd') {
    kid.rightPressed = false;
  }
  if (key == 'w') {
    kid.upPressed = false;
  }
  //  if (key == 's') {
  // kid.downPressed = false;
  //}
}

void contactStarted(FContact contact) {
  FBody _body1 = contact.getBody1();
  FBody _body2 = contact.getBody2();
 
  if ((_body1.getName() == "personaje" && (_body2.getName() == "plataforma" || _body2.getName() == "obstaculo"))
    || (_body2.getName() == "personaje" && (_body1.getName() == "plataforma" || _body1.getName() == "obstaculo")))
  {
    if (contact.getNormalX() == 0 && kid.getVelocityY() >= 0)
    {
      if (_body1.getName() == "personaje" && contact.getNormalY() > 0)
      {
        kid.canJump = true;
      } else if (_body2.getName() == "personaje" && contact.getNormalY() < 0)
      {
        kid.canJump = true;
      }
    }
 if (contact.getNormalX() == 0 && kid.getVelocityY() <=0)
        { 
          if (_body1.getName() == "personaje" && contact.getNormalY() < 0)
          {
            _body2.setSensor (true);
          } else if (_body1.getName() == "personaje" && contact.getNormalY() >0)
          {
            kid.canJump = true;
            _body2.setSensor (false);
          }
        }
  }
      //FBody _body1 = contact.getBody1();
      //FBody _body2 = contact.getBody2();

      //if ((_body1.getName() == "personaje" && (_body2.getName() == "plataforma" )) //|| _body2.getName() == "obstaculo"
      //  || (_body2.getName() == "personaje" && (_body1.getName() == "plataforma" ))) //|| _body1.getName() == "obstaculo") 
      //{

      //  if
      //    (contact.getNormalX() == 0 && kid.getVelocityY() >= 0)
      //  {
      //    if (_body1.getName() == "personaje" && contact.getNormalY() > 0)
      //    {
      //      kid.canJump = true;
      //    } else if (_body2.getName() == "personaje" && contact.getNormalY() < 0)
      //    {
      //      kid.canJump = true;
      //    }
      //  }
      //  if (contact.getNormalX() == 0 && kid.getVelocityY() <=0)
      //  { 
      //    if (_body1.getName() == "personaje" && contact.getNormalY() < 0)
      //    {
      //      _body2.setSensor (true);
      //    } else if (_body1.getName() == "personaje" && contact.getNormalY() >0)
      //    {
      //      kid.canJump = true;
      //      _body2.setSensor (false);
      //    }
      //  }
      //}

      //println(_body1.getName(), _body2.getName());
      //println(contact.getNormalX(), contact.getNormalY(), mario.getVelocityY());

      if ((_body1.getName() == "personaje" && _body2.getName() == "chicle")
        || (_body2.getName() == "personaje" && _body1.getName() == "chicle"))
      {
        if (kid.vivo)
        {
          kid.matar();
          world.remove(kid);
        }
      }
    

}
    void mousePressed () {

      Chicle a= new Chicle (15);

      a.inicializar(random (width), random (height -300));
      world.add(a);
    }
