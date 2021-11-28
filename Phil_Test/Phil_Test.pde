float rectX;
float rectY;
float rectP;
float rectQ;
float rectA;
float rectB;
float ellipseC;
float ellipseD;
float ellipseR;
float ellipseS;

void setup(){
size(800,800);
background (0);
}

void draw(){
    // Background

  rectX = random(100,666);
  rectY = random(100,666);
  rectP = random(100,666);
  rectQ = random(100,666);
  rectA = random(100,666);
  rectB = random(100,666);
  ellipseC = random(100,666);
  ellipseD = random(100,666);
  ellipseR = random(100,666);
  ellipseS = random(100,666);
  
  stroke(0);
  fill(237,52,65);
  rect(rectX, rectY, 33,33);
  
  stroke(0);
  fill(255, 176, 59);
  rect(rectP,rectQ,26,26);
  
  stroke(255);
  fill(54,172, 245);
  rect(rectA, rectB, 26, 26);
  
  stroke(0);
  fill(255, 214,48);
  ellipse(ellipseC, ellipseD,42,42);
  
  stroke(255);
  fill(8, 78, 134);
  ellipse(ellipseR, ellipseS, 26, 26);
 
  
//saveFrame("line-######.png");
}
