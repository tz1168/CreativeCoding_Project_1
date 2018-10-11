int xLoc, yLoc, r, g, b;
int aa,bb,cc,dd,n,m,v;
int x1,x2,y1,y2,z1,z2;
float ra;
color skin;
color skin2;
color skin3;


Building blue;
Building green;
//Building white;


void setup() {
  size(800, 800);
  background(0);
  frameRate(10);
  fill(50);
  triangle(150,300,650,300,400,750);
  fill(255);
  ellipse(400,300,500,150);

}
{
  green=  new Building(100, 400, color(227,73,187), color(67,28,198),color(167,228,18), color(198,10,200), 100, 300, 0.2, 40,80,-80,-20);;
  blue= new Building(129, 380, color(97,254,170), color(46,92,180),color(238,98,100), color(99,180,211), 80, 280, 1, 20,50,-50,-80);
  white= new Building();
}

void draw() {
  background(0);
  noStroke();
  fill(50);
  triangle(150,300,650,300,400,750);
  fill(255);
  ellipse(400,300,500,150);
  
  
  
  green.display();
  blue.display();
  green.move(10);
  blue.move(20);
  green.rotat(-0.1);
  blue.rotat(-0.02);
  //white.rotat(10);
   /*
  white.display();
  green.move();
  blue.move();
  white.move();
  green.rotat();
  blue.rotat();
  white.rotat();
 */ 
}
