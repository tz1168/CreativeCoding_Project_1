class Building {
  int x;
  int y;
  int skin;
  int skin2;
  int skin3;
  int skin4;
  int aa;
  int bb;
  int cc;
  int dd;
  int x1;
  int x2;
  int y1;
  int y2;
  int z1;
  int z2;
  float ra;
  int n;
  int m;
  int v;
  int a;
  int b;
  int w;
  int h;
  int i;

  Building(int x_, int y_, color s_, color ss_, int sss_, int ssss_, int w_, int h_, 
  //int aa_, int bb_, int cc_, int dd_ ,
  //int tx1, int tx2, int ty1, int ty2, int tz1, int tz2, 
  float ra_, 
  int m_,int n_, int i_,//int v_, 
  int a_) {
    x=x_;
    y=y_;
    skin=s_;
    skin2=ss_;
    skin3=sss_;
    skin4=ssss_;
    w=w_;
    h=h_;
    ra=ra_;
    a=a_;
    n=n_;
    m=m_;
    i=i_;
    /*
    aa= aa_;
    bb= bb_;
    cc= cc_;
    dd= dd_;
    x1= tx1;
    x2= tx2;
    y1= ty1;
    y2= ty2;
    z1= tz1;
    z2= tz2;
    n=n_;
    m=m_;
    v=v_;
    b=b_;
*/
  }


  void display() {  //the building
  scale(0.5);
  rotate(ra);
  stroke(95, 164, 255);
  strokeWeight(2);
  fill(skin);
  pushMatrix();
  translate(x, y);
  rect(0,0,w,h);
  fill(skin2);
  triangle(0,0,w,0,0.5*w,a);
  fill(skin3);
  stroke(skin4);
  for (int p = 8; p < w-10; p = p+15) {
  for (int q = 10; q < h-50; q = q+15) {
    rect(p,q,10,10);
  }
}
  rect(0.3*w,h+i,m,n);
  popMatrix();
  }
  

  
  void move(int amount){ //moving towards the black hole,falls inside
    x= x+ amount;
    
    if (x> 408){
      y= y+amount;
      x=x+1;
      
    }

  }
  
  void rotat(float radian){ //rotate when falling
    ra= ra+radian;
  }
  
}
