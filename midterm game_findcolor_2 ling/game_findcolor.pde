float flagxy[] = new float[4];
boolean start = false;
int n;
int score;
float colorShift = 180;
int startTime;
color backgroundColor;
int totalTime=20000;
String state="endGame" ;


void setup() {
  size(600, 600);
  frameRate(30);
  smooth();//
  noStroke();//
  colorMode(HSB, 360, 100, 100);
  backgroundColor = color(0, 5, 95);
  background(backgroundColor);
  endGame();
}


void draw() {
  if (start) {
    if(startTime<=30*20){
      startTime++;
    }else{
//    if (startTime >= totalTime ) 
//      gameOver();
//  }
//  if (state=="gameOver"){
//    startTime=0;
//    totalTime=0;
 //   start();
 endGame();
}
  }
}


void star() {
  start = true;
  n = 2;
  score = 0;
  startTime = 0;
  drawRect(n);
}


void endGame() {
  start = false; 
  background(backgroundColor);
  String s;
  s = "Press to start. Your score is "+ score ;
  textSize(25);
  textAlign(LEFT);
  fill(10);
  text(s, 150, 200);
}

void gameOver() {
  background(0);
  String q;
  q="Game Over. Your score is "+ score;
  textSize(25);
  textAlign(LEFT);
  fill(255);
  text( q, 150,200);
}


  void drawRect(int n) {
    background(backgroundColor);
    float a = width/n;
    float margin = 10 - n;
    float r = a*0.1;
    float c = random(360);
    int colorx = int(random(n));
    int colory = int(random(n));
    for (int i=0; i < n; i++) {
      for (int j=0; j < n; j++) {
        if (i == colorx && j == colory) {
          fill((c+colorShift)%360, 90, 90);
          rect(a*colorx+margin, colory*a+margin, a-2*margin, a-2*margin, r);
        } else {
          fill(color(c, 90, 90));
          rect(a*i+margin, j*a+margin, a-2*margin, a-2*margin, r);
        }
      }
    }
    flagxy[0]= a*colorx;
    flagxy[1]= a*colorx + a;
    flagxy[2]= a*colory;
    flagxy[3]= a*colory + a;
  }


  void keyPressed() {
    star();
//    if (key==' '){
//      state="endGame";
//      totalTime=0;
//      startTime=0;
//    }
  }


  void mouseReleased() {

    if (mouseX > flagxy[0] && mouseX < flagxy[1] && mouseY > flagxy[2] && mouseY < flagxy[3]) {

      drawRect(n);
      score ++;
      println(score);
      colorShift = 180/score+20;

      if (n < 7) {
        n = int(2 + score/3);
      }
    }
  }

