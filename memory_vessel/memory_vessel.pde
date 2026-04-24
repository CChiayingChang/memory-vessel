//number 5
//person doing puzzles at night?

color nightsky=#0D1840;
color brown=#624714;
color wall=#CECDC8;

void setup () {
  size (900, 700);
  background (wall);
}

void draw () {
  println (mouseX, mouseY);
  //lines for dimensions of room
  line (150, 0, 150, 400);
  line (150, 400, 0, 500);
  line (150, 400, 900, 400);
  window (450, 50);
}

void window (int x, int y) {
  pushMatrix ();
    translate (x, y);
    fill (brown);
    rect (0, 0, 400, 250);//the window frame
    //the window panes
    fill (nightsky);
    rect (20, 20, 170, 95);
    rect (210, 20, 170, 95);
    rect (20, 135, 170, 95);
    rect (210, 135, 170, 95);
    for (int i=490;  i<640; i++) {
      float X= random (190);
      float Y=random (100);
      float r=random (5);
      fill (255);
      noStroke ();
      circle (X, Y, r);
    }
  popMatrix ();
}
