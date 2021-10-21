color bgcol = color((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200));
Walker fred;
Walker [] dort = new Walker[15];

void setup() {
  size(700, 700);
  background((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200));
  frameRate(50);
  int i = 0;
  while (i < dort.length) {
    dort[i] = new Walker();
    i++;
  }
}

void mousePressed() {
  bgcol = color((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200));
}

void draw() {
  background(bgcol);
  for (int i = 0; i < dort.length; i++) {
    dort[i].walk();
    dort[i].show();
  }
}

class Walker {
  int myX, myY, col;

  Walker() {
    myX = 350;
    myY = 350;
    col = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void walk() {
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
