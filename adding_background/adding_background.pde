PImage startScreen;
PFont titleFont;
int  stage;
// how many stars to make for the background
int starCount = 100;
// -----------------------------------------
// the coordinates for the stars (array)
float[] starsX;
float[] starsY;
// -----------------------------------------
// the speeds of the stars (array)
float[] starSpeeds;
// -----------------------------------------
// for multiple bullets to appear on the screeen
PVector[] bullets = new PVector[30];
// -----------------------------------------


void setup(){
  stage = 1;
  
  size (1920, 1080);
  startScreen = loadImage("start.jpg");
  image(startScreen, 0, 0, 1920, 1080);
  titleFont = loadFont("font.vlw");
  
  // creates the arrays with starCount number of elements in each
  starsX = new float[starCount];
  starsY = new float[starCount];
  starSpeeds = new float[starCount];
  // -----------------------------------------
  
  // Go over each speed in the array, set it to random value
  for(int i = 0; i < starCount; i++) {
    starsY[i] = random(0, height);
    starsX[i] = (width / starCount) * (i + 1);
    starSpeeds[i] = random(2, 5);
  }
  // -----------------------------------------
}


void draw(){
  if (stage ==1) {
    drawstage1();
  } else if (stage==2) {
   drawstage2();
  }
}


void drawstage1() {
   textAlign(CENTER);
    textFont(titleFont);
    textSize(100);
    text("Galatica War", 450, 650);
    textSize(40);
    text("Press space key to start game", 450, 725);
    if(keyPressed ==true){
      stage = 2;
    }
}

void drawstage2() {
    // colour for the background
   background(0);
   // -----------------------------------------
   
   // Go over each stars x, y coordinate 
   for(int i = 0; i < starCount; i++) {
     // makes the stars increase x by 1 which causes them to go slightly diagonal across the screen
     starsX[i] += 1;
     // -----------------------------------------
     // restarts the stars to 0 if it exceeds the width of the screen
     if(starsX[i] > width) {
       starsX[i] = 0;
     }
     // -----------------------------------------
     // assigning the stars speeds to the stars y coordinates
     starsY[i] = starsY[i] + starSpeeds[i];
     // -----------------------------------------
     // restarts the stars to 0 if it exceeds the height of the screen
     if(starsY[i] > height) {
       starsY[i] = 0;
     }
     // -----------------------------------------
  
     // the weight of the points
     strokeWeight(3);
     // -----------------------------------------
     // the colour of the points
     stroke(255);
     // -----------------------------------------
     // assigning the points to the stars x,y coordinates
     point(starsX[i], starsY[i]);
     // -----------------------------------------
    }
}
void keyPressed() {
  
  
}
