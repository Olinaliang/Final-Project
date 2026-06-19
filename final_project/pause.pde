void pause() {
  theme.play();
  background(gameColor);
  fill(255);
  textSize(80);
  text("PAUSED", width/2, height/2 - 50);
  textSize(30);
  text("Click to continue", width/2, height/2 + 50);
}

void pauseClicks() {
  mode = GAME;
}
