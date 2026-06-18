int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;

//variables
float leftx, lefty, leftd;
float rightx, righty, rightd;
float puckx, pucky, puckd;
float vx, vy;

//keyboard variables
boolean wkey, akey, skey, dkey;
boolean upkey, downkey, leftkey, rightkey;

//colours
color backgroundColor = #FF2EB3;
color gameColor = #102A43;
color leftColor = #FF8FAB;
color rightColor = #8EECF5;
color puckColor = #FFF3B0;

void setup() {
  size(800, 600);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);

  resetGame();
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  }
}
