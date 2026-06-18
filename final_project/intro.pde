void intro() {
  background(backgroundColor);

  textSize(90);
  fill(0, 0, 255);
  text("AIR HOCKEY", width/2, 160);


  rectButton("START", width/2, 430, 300, 100);
}

void introClicks() {
  if (mouseX > width/2 - 150 && mouseX < width/2 + 150 && mouseY > 430 - 50 && mouseY < 430 + 50) {
    resetGame();
    mode = GAME;
  }
}
