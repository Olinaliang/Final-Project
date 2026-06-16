int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//entity variables
float leftx, lefty, leftd;
float rightx, righty, rightd;
float ballx, bally, balld, vx, vy;

//score and timer
int leftscore, rightscore, timer;

//1 player/2player
boolean AI;

//keyboard variables
boolean wkey, skey, upkey, downkey;

//music

//colour

void setup() {
  size(800,600);
  mode = INTRO;
}

void draw() {
  background(0);
  
  if(mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
