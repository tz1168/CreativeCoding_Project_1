class Building {
  int xLoc;
  int yLoc;
  int skin;
  int skin2;
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
  int ra;
  int n;
  int m;
  int v;

  Building(int x_, int y_, color s_, color ss_, int aa_, int bb_, int cc_, int dd_ ,int tx1, int tx2, int ty1, int ty2, int tz1, int tz2, int ra_, int n_, int m_, int v_) {
    xLoc=x_;
    yLoc=y_;
    skin=s_;
    skin2=ss_;
    aa= aa_;
    bb= bb_;
    cc= cc_;
    dd= dd_;
    /*
    x1= tx1;
    x2= tx2;
    y1= ty1;
    y2= ty2;
    z1= tz1;
    z2= tz2;
    */
    ra=ra_;
    n=n_;
    m=m_;
    v=v_;
  }


  void display() {  //the building
    stroke(skin);
    strokeWeight(0);
    noFill();
    rotate(ra);
    pushMatrix();
    translate(xLoc, yLoc);
    fill(skin2);
    rect(aa,bb,cc,dd);
    noStroke();
    triangle(aa,bb,aa+n,bb,aa+m,bb+v);
    //rect();  //windows
    //rect();  //windows
    popMatrix();
  }
  
  void move(int amount){ //moving towards the black hole,falls inside
    xLoc= xLoc+ amount;
    
    if (xLoc> width/2){
      yLoc= yLoc-amount;
      xLoc=xLoc+1;
      
    }

  }
  
  void rotat(int radian){ //rotate when falling
    ra= ra+radian;
  }
  
}
