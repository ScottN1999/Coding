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
 textSize(25);
 text("Galatica War", 500, 450);
 text("Press space key to start game", 500, 485);
 if(keyPressed ==true){
   stage = 2;
  }
  }
  if (stage==2) {
    background (255,0,0);
  }
}