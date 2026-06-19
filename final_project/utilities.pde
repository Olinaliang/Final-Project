void resetGame() {
  //starting position
  leftx = 180;
  lefty = height/2;
  leftd = 80;
  rightx = width - 180;
  righty = height/2;
  rightd = 80;

  //score
  leftscore = 0;
  rightscore = 0;


  resetRound();

  
  wkey = false;
  akey = false;
  skey = false;
  dkey = false;

  upkey = false;
  downkey = false;
  leftkey = false;
  rightkey = false;
}

void resetRound() {
  //puck starting position
  puckx = width/2;
  pucky = height/2;
  puckd = 45;

  //puck speed
  if (random(1) > 0.5) {
    vx = 4;
  } else {
    vx = -4;
  }

  vy = random(-3, 3);

  if (vy > -1 && vy < 1) {
    vy = 3;
  }
}

void rectButton(String label, float x, float y, float w, float h) {
  //hover effect
  if (mouseX > x - w/2 && mouseX < x + w/2 && mouseY > y - h/2 && mouseY < y + h/2) {
    fill(#FFE066);
  } else {
    fill(255);
  }

  stroke(0);
  strokeWeight(3);
  rect(x, y, w, h, 10);
  fill(0);
  textSize(50);
  text(label, x, y);
}
