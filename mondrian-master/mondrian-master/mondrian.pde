// import the library
import com.hamoid.*;

// create a new VideoExport-object
VideoExport videoExport;

int transYellow = 400;
int transBlack = 0;
boolean moveRight = true;
boolean moveDown = true;

void setup() {
  size(400, 400);
  rectMode(CORNERS);
  videoExport = new VideoExport(this, "mondrian.mp4");
  videoExport.setFrameRate(30);  
  videoExport.startMovie();
}

void draw() {
  background(255);
  noStroke();

  // upper left, black rectangle
  fill(0, 0, 0);
  rect(0, 0, mouseX, transBlack);

  // upper right, red rectangle
  fill(230, 20, 20);
  rect(mouseX, 0, 400, mouseY);

  // lower left, blue rectangle 
  fill(40, 20, 200);
  rect(0, mouseY, mouseX, 400);

  // lower right, yellow rectangle 
  fill(230, 230, 20);
  rect(transYellow, mouseY, 400, 400);
  //rect(transYellow, 200+mouseY/2, 400, 400); og half yellow

  // black lines
  stroke(0);
  strokeCap(SQUARE);
  strokeWeight(12);
  line(mouseX, 0, mouseX, 400);
  line(0, mouseY, 400, mouseY);
  line(transYellow, mouseY, transYellow, 400);

  strokeWeight(12);
  // line(0, mouseY/2, mouseX, mouseY/2); og line left top corner (black)
  //line(transYellow, 200+mouseY/2, 400, 200+mouseY/2); og line right bottom corner (yellow)

  if (moveRight) {
    transYellow = transYellow + 4;
  } else {
    transYellow = transYellow - 1;
  }
  if (transYellow <= mouseX) moveRight = true;
  if (transYellow >= 400) moveRight = false;

  if (moveDown) {
    transBlack = transBlack + 4;
  } else {
    transBlack = transBlack - 1;
  }
  if (transBlack >= mouseY) moveDown = false;
  if (transBlack <= 0) moveDown = true;

  videoExport.saveFrame();
}

void keyPressed() {
  if (key == 'q') {
    videoExport.endMovie();
    exit();
  }
}      
