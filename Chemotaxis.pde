color bgcol = color((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200));
mover fred;
mover [] dort = new mover[15];

void setup() {
  size(700, 700);
  background((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200));
  frameRate(50);
  int i = 0;
  while (i < dort.length) {
    dort[i] = new mover();
    i++;
  }
}

void mousePressed() {
  bgcol = color((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200));
}

void draw() {
  background(bgcol);
  for (int i = 0; i < dort.length; i++) {
    dort[i].move();
    dort[i].show();
  }
}

class mover {
  int myX, myY, col;

  mover() {
    myX = 350;
    myY = 350;
    col = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void move() {
    if (mouseX > myX) {
      if (mouseY > myY) {
        myX = myX + (int)(Math.random()*7)-1;
        myY = myY + (int)(Math.random()*7)-1;
      } else if (mouseY < myY) {
        myX = myX + (int)(Math.random()*7)-1;
        myY = myY + (int)(Math.random()*7)-5;
      } else {
        myX = myX + (int)(Math.random()*7)-3;
        myY = myY + (int)(Math.random()*7)-3;
      }
    } else if (mouseX < myX) {
      if (mouseY > myY) {
        myX = myX + (int)(Math.random()*7)-5;
        myY = myY + (int)(Math.random()*7)-1;
      } else if (mouseY < myY) {
        myX = myX + (int)(Math.random()*7)-5;
        myY = myY + (int)(Math.random()*7)-5;
      } else {
        myX = myX + (int)(Math.random()*7)-3;
        myY = myY + (int)(Math.random()*7)-3;
      }
    } else {
      myX = myX + (int)(Math.random()*7)-3;
      myY = myY + (int)(Math.random()*7)-3;
    }
  }

  void show() {
    noStroke();
    fill(col);
    ellipse(myX, myY, 30, 30);
  }
}
