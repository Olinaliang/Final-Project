void game() {
  background(gameColor);

  //goals
  strokeWeight(8);
  stroke(leftColor);
  line(0, 180, 0, 420);

  stroke(rightColor);
  line(width, 180, width, 420);

  //players
  noStroke();
  fill(leftColor);
  circle(leftx, lefty, leftd);

  fill(rightColor);
  circle(rightx, righty, rightd);

  //puck
  fill(puckColor);
  circle(puckx, pucky, puckd);

  //left player movement
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (akey == true) leftx = leftx - 5;
  if (dkey == true) leftx = leftx + 5;

  //right player movement
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;
  if (leftkey == true) rightx = rightx - 5;
  if (rightkey == true) rightx = rightx + 5;

  //puck 
  puckx = puckx + vx;
  pucky = pucky + vy;
   vx=vx*0.99;
  vy=vy*0.99;

  //bounce off 
  if (puckx < puckd/2) {
    puckx = puckd/2;
    vx = vx * -1;
  }

  if (puckx > width - puckd/2) {
    puckx = width - puckd/2;
    vx = vx * -1;
  }
  if (pucky < puckd/2) {
    pucky = puckd/2;
    vy = vy * -1;
  }
  
  if (dist(puckx, pucky, leftx, lefty) < leftd/2 + puckd/2) {
    vx = (puckx - leftx) / 10;
    vy = (pucky - lefty) / 10;
  }
  
  if (pucky > height - puckd/2) {
    pucky = height - puckd/2;
    vy = vy * -1;
  
  
  
  }
  
}

void gameClicks() {
  mode = PAUSE;
}
