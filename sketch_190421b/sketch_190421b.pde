PImage startScreen;
PFont title;
int  stage;

void setup(){
  stage = 1;
  
  size (1920, 1080);
  startScreen = loadImage("start.jpg");
  image(startScreen, 0, 0, 1920, 1080);
  title = createFont ("font", 1000, true);
}
void draw(){
  if (stage ==1) {
 textAlign(CENTER);
 textSize(16);
 text("Galatica War", 100, 150);
 text("Press any key to start game", 100, 170);
  }
  
  if (stage==2) {
  }
}