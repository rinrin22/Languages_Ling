float r=255;
float g=255;
float b=255;
float x;
float y;


void setup() {
  size(600, 600);
  smooth();
  rectMode(CENTER);
  colorMode(RGB);
  
}

void draw() {
  background(0);
  fill(255);
  String s="lingyi Zhang-cherryblossom and box";
  text(s,10,10);
  fill(r, g, b);
  rect(300, 300, 100, 100);
  if (mouseX>=width/2) {
    for (int i=100; i<width; i=i+30) {
      fill(r-i+20, b+120-i, b-80+i);
      rect(300, 300, (width-i), width-i);  
      //rect(300,300,i,i);
    }
  } else {
    for (int i=90; i>1; i=i-10) {
      fill(r+i+90, g-i-20, b+i+30);
      rect(300, 300, i, i);
    }
  }
  if (mousePressed==true) {
    for (int k=255; k>=0; k=k-80) {
      fill(255, 200, 200, k);
      x=mouseX+random(-30, 30);
      y=mouseY+random(-30, 30);
      translate(x, y);
      ellipse(x, y, 20, 8);
      //      rotate(PI/1.0);
      filter(BLUR, 0.1);
    }
  }
}


void mouseClicked() {
  r=random (0, 255);
  g=random (0.255);
  b=random (0, 255);
  println(r);
  println(g);
  println(b);
}

