void gameover() {
  theme.play();
  background(backgroundColor);

  textSize(80);
  if (leftscore >= 3) {
    fill(leftColor);
    text("LEFT WINS!", width/2, height/2 - 100);
  } else {
    fill(rightColor);
    text("RIGHT WINS!", width/2, height/2 - 100);
  }

  textSize(45);
  fill(255);
  text(leftscore + " - " + rightscore, width/2, height/2);

  rectButton("MAIN MENU", width/2, height/2 + 120, 350, 90);
}

void gameoverClicks() {
  theme.rewind();
  resetGame();
  mode = INTRO;
}
