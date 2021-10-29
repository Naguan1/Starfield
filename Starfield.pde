class Particle {
  double myX,myY,mySpeed, myAngle;
  int myColor;
  Particle()
  {
    myX=myY =400;
    myAngle= Math.random()*2*Math.PI;
    mySpeed= Math.random()*12;
    myColor= color((int)(Math.random()*256),(int)(Math.random()*256)+128,(int)(Math.random()*256));
  }
  void move() {
     myX = myX + Math.cos(myAngle) *mySpeed;
    myY = myY + Math.sin(myAngle)* mySpeed;
  }
void show() {
  noStroke();
  fill(myColor);
 ellipse((float)myX,(float)myY,(float)(Math.random()*15),(float)(Math.random()*10));
}
}

Particle [] corpses=new Particle[2000];
void setup () {
  size(800,800);
   for (int i = 0; i < corpses.length; i++) {
    corpses[i] = new Particle();
  }
   for (int i = 0; i < 100; i++) {
    corpses[i] = new OddBallParticle();
  }
}
void draw() {
  
  for (int i = 0; i < corpses.length; i++){
    corpses[i].move();
    corpses[i].show();
}
}
class OddBallParticle extends Particle {
  OddBallParticle()
  {
    myX=myY =400;
    myAngle= Math.random()*2*Math.PI;
    mySpeed= Math.random()*12;
    myColor= color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move() {
     myX = myX + Math.cos(myAngle) *mySpeed;
    myY = myY + Math.sin(myAngle)* mySpeed;
  }
void show() {
  noStroke();
  fill(myColor);
 rect((float)myX,(float)myY,(float)(Math.random()*14)+10,(float)(Math.random()*10)+5);
}
}
