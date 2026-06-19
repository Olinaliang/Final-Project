import ddf.minim.*;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//variables
float leftx, lefty, leftd;
float rightx, righty, rightd;
float puckx, pucky, puckd;
float vx, vy;

//score
int leftscore, rightscore;

//keyboard variables
boolean wkey, akey, skey, dkey;
boolean upkey, downkey, leftkey, rightkey;


Minim minim;
AudioPlayer theme, success, failure;

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

  //sound
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  success = minim.loadFile("SUCCESS.wav");
  failure = minim.loadFile("FAILURE.wav");

  resetGame();
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  }
}
