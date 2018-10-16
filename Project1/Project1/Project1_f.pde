int xLoc, yLoc, r, g, b;
int aa, bb, cc, dd, n, m, v;
int x1, x2, y1, y2, z1, z2;
float ra;
color skin;
color skin2;
color skin3;
float x, y, q, rad, c;



Building blue;
Building green;
Building white;
Building one;
Building two;
Building three;
Building four;
Building five;
Building six;
Building seven;
Building eight;
Building nine;
Building ten;
Building eleven;


void setup() {
  size(800, 800);
  background(56,40,39);
  frameRate(10);
  fill(0);
  noStroke();
  triangle(width/2,height,0,height/1.5,width,height/1.5);

  x=0;
  y=0;
  
  
 

{
  green=  new Building(100, 400, color(227, 73, 187), color(67, 28, 198), color(167, 228, 18), color(198, 10, 200), 100, 300, 0.2, 40, 80, -80, -20, 0.5);
  blue= new Building(200, 380, color(97, 254, 170), color(45, 68, 54), color(238, 98, 100), color(99, 180, 211), 80, 280, 1, 20, 50, -50, -80, 1);
  white= new Building(280, 420, color(29, 179, 29), color(188, 29, 22), color(109, 167, 97), color(167, 189, 22), 90, 290, 0.8, 30, 40, -40, -90, 1);
  one=new Building(380, 395, color(188, 100, 78), color(79, 176, 222), color(26, 111, 44), color(67, 22, 45), 120, 291, 0.4, 30, 42, -40, -90, 1);
  two=new Building(500, 390, color(187, 37, 166), color(77, 245, 111), color(26, 166, 35), color(199, 42, 33), 105, 289, 0.3, 30, 43, -40, -90, 1);
  three=new Building(600, 400, color(78, 100, 200), color(99, 22, 44), color(177, 200, 47), color(68, 44, 27), 101, 304, 0.7, 30, 40, -40, -90, 1);
  four=new Building(700, 429, color(99, 88, 100), color(37, 233, 88), color(26, 188, 200), color(253, 199, 100), 92, 298, 0.9, 30, 42, -40, -90, 1);
  five=new Building(800, 433, color(98, 11, 228), color(88, 29, 187), color(46, 96, 37), color(111, 222, 11), 89, 292, 0.4, 30, 38, -40, -90, 1);
  six=new Building(900, 420, color(177, 32, 199), color(77, 38, 45), color(75, 201, 222), color(27, 199, 20), 112, 295, 0.2, 30, 44, -50, -90, 1);
  seven=new Building(1000, 419, color(166, 44, 189), color(167, 45, 76), color(176, 222, 233), color(47, 26, 177), 98, 301, 0.5, 30, 42, -40, -90, 1);
  eight=new Building(1100, 422, color(77, 37, 253), color(67, 238, 22), color(185, 200, 185), color(36, 59, 27), 89, 292, 1.1, 30, 40, -41, -90, 1);
  nine=new Building(1200, 419, color(178, 38, 47), color(174, 178, 55), color(198, 100, 36), color(188, 100, 200), 94, 290, 0.8, 30, 40, -40, -90, 1);
  ten=new Building(1300, 425, color(27, 100, 234), color(32, 44, 67), color(238, 199, 200), color(24, 56, 89), 103, 298, 0.6, 30, 44, -40, -80, 1);
  eleven=new Building(1400, 430, color(218, 86, 233), color(36, 23, 44), color(47, 29, 100), color(76, 199, 200), 105, 300, 0.5, 30, 39, -40, -90, 1);
  }
}
void draw() {
  
  display();
  //if (keyCode==DOWN){
  int s= second();
  if (s>=30) {
    circle();
  }
  //brush();
}

void circle() {
  background(0);
  //pushMatrix();
  //translate(width/2, height/2);
  noStroke();
  float d =map(mouseX, 0, width, 700, 1000);
  float c =map(mouseX, 0, height, 500, 1000);
  ellipse(750, 750, d,c);
  for (float i = 900; i < 1000; i = i+-1) {
    for (float j = 900; j < 1000; j = j+-1) {
      //ellipse(i,i,100,100);
      ellipse(i, j, 200, 100);
      ellipse(j, i, 200, 100);
      ellipse(-i, -j, 200, 100);
      ellipse(-j, -i, 200, 100);
      //ellipse(j,j,200,200);
      i = 750 +- rad * cos(q);
      j = 750 +- rad * sin(q);

      noStroke();
      c = 255-q;
      fill(c); 
      q=q+0.5;
      rad= rad+-1;
    }
  }
  //popMatrix();
}
void display() {
  background(56,40,39);
  fill(0);
  noStroke();
  triangle(width/2,height,0,height/1.5,width,height/1.5);
  green.display();
  blue.display();
  white.display();
  one.display();
  two.display();
  three.display();
  four.display();
  five.display();
  six.display();
  seven.display();
  eight.display();
  nine.display();
  ten.display();
  eleven.display();
  green.move(30);
  blue.move(10);
  white.move(70);
  one.move(40);
  two.move(60);
  three.move(31);
  four.move(38);
  five.move(28);
  six.move(49);
  seven.move(67);
  eight.move(80);
  nine.move(88);
  ten.move(90);
  eleven.move(50);
}
/*
void brush() {

  fill(random(250), 200, 200, random (255));
  noStroke();
  frameRate(8);
  rect(mouseX, mouseY, random(50), random(50));
}

*/
