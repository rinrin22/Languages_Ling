  
 int i=0;
void setup(){
size(600,400);
background(255);
colorMode(HSB,360,100,100);
rectMode(CENTER);
}


void draw(){
 
  line(0,200,600,200);
  line(0,400,600,400);
  line(200,0,200,600);
  line(400,0,400,600);
noStroke();
float x=random(360);
  if (mousePressed == true) {
    fill(x,100,100);
  } else {
    fill(0,0,100);
  }
  rect(100, 100, 190, 190);
  ellipse(300,100,190,190);
  triangle(410, 10, 590,10, 500, 190);
  fill(0,0,i);
  rect(300,300,190,190);
  ellipse(500,300,190,190);
  triangle(10,210,190,210,100,390);
}

  void mousePressed() {
  if (i == 0) {
    i = 100;
  } else {
    i = 0;
  }
  }
  