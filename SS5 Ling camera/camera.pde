import processing.video.*;
int videoScale=8;
int cols,rows;

Capture cam;

void setup() {
  size(640, 480);
  rectMode(CENTER);
  cols=width/videoScale;
  rows=height/videoScale;

  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    

    cam = new Capture(this, cameras[0]);
    cam.start();     
  }      
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  image(cam, 0, 0);
if (mouseX>=width/2){
  rect(320,240,width, height);
  fill(255 * mouseX / width,255 * mouseY / height,20,80);
}else if(mouseX<width/2){
  for (int i = 0; i < cols; i++) {

for (int j = 0; j < rows; j++) {

int x = i*videoScale;

int y = j*videoScale;

//fill(255);

stroke(0);

rect(x, y, videoScale, videoScale);
}
  }
}
  
}

