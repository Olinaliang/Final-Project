void game() {
  theme.pause();
  background(gameColor);

  //goals
  strokeWeight(8);
  stroke(leftColor);
  line(0, 180, 0, 420);
  stroke(rightColor);
  line(width, 180, width, 420);

  textSize(50);
  fill(leftColor);
  text(leftscore, width/4, 70);

  fill(rightColor);
  text(rightscore, 3*width/4, 70);

  textSize(20);
  fill(255);
  text("First to 3 wins", width/2, 40);

  //players
  noStroke();
  fill(leftColor);
  circle(leftx, lefty, leftd);

  fill(rightColor);
  circle(rightx, righty, rightd);

  //puck
  fill(puckColor);
  circle(puckx, pucky, puckd);

  // movement
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (akey == true) leftx = leftx - 5;
  if (dkey == true) leftx = leftx + 5;
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;
  if (leftkey == true) rightx = rightx - 5;
  if (rightkey == true) rightx = rightx + 5;

  //restriction
  if (leftx < leftd/2) {
    leftx = leftd/2;
  }
  if (leftx > width/2 - leftd/2) {
    leftx = width/2 - leftd/2;
  }
  if (lefty < leftd/2) {
    lefty = leftd/2;
  }
  if (lefty > height - leftd/2) {
    lefty = height - leftd/2;
  }
  if (rightx < width/2 + rightd/2) {
    rightx = width/2 + rightd/2;
  }
  if (rightx > width - rightd/2) {
    rightx = width - rightd/2;
  }
  if (righty < rightd/2) {
    righty = rightd/2;
  }
  if (righty > height - rightd/2) {
    righty = height - rightd/2;
  }

  //puck movement
  puckx = puckx + vx;
  pucky = pucky + vy;
  vx = vx * 0.99;
  vy = vy * 0.99;

  //scoring
  if (puckx < puckd/2 && pucky > 180 && pucky < 420) {
    rightscore = rightscore + 1;
    failure.rewind();
    failure.play();
    resetRound();
  }
  if (puckx > width - puckd/2 && pucky > 180 && pucky < 420) {
    leftscore = leftscore + 1;
    failure.rewind();
    failure.play();
    resetRound();
  }

  //bounce 
  if (puckx < puckd/2 && (pucky < 180 || pucky > 420)) {
    puckx = puckd/2;
    vx = vx * -1;
    success.rewind();
    success.play();
  }
  if (puckx > width - puckd/2 && (pucky < 180 || pucky > 420)) {
    puckx = width - puckd/2;
    vx = vx * -1;
    success.rewind();
    success.play();
  }
  if (pucky < puckd/2) {
    pucky = puckd/2;
    vy = vy * -1;
    success.rewind();
    success.play();
  }
  if (pucky > height - puckd/2) {
    pucky = height - puckd/2;
    vy = vy * -1;
    success.rewind();
    success.play();
  }

  //hitting puck
  if (dist(puckx, pucky, leftx, lefty) < leftd/2 + puckd/2) {
    vx = (puckx - leftx) / 10;
    vy = (pucky - lefty) / 10;
    success.rewind();
    success.play();
  }
  if (dist(puckx, pucky, rightx, righty) < rightd/2 + puckd/2) {
    vx = (puckx - rightx) / 10;
    vy = (pucky - righty) / 10;
    success.rewind();
    success.play();
  }

  //gameover
  if (leftscore >= 3 || rightscore >= 3) {
    mode = GAMEOVER;
  }
}

void gameClicks() {
  mode = PAUSE;
}
