//number 5
//person doing puzzles at night?

color nightsky=#0D1840;
color brown=#624714;
color wall=#CECDC8;
color purpleblue=#606CE8;
color bedsheets=#E3E3E3;
color lightblue=#5AB2F7;
int puzzlex5;
int puzzley6;

void setup () {
  background (wall);
  size (900, 700);
  window (450, 50);//do this in the setupp so the starts don't keep flickering wildly as they're redrawn
  for (int i=0;  i<50; i+=1) {//runs 50 times
      float r=random (5);//random diameteer up to 5
      fill (255);
      noStroke ();
      circle (random (472, 638), random (72, 163), r);//random (x limits), random (y limits), r
      circle (random (662, 828), random (72, 163), r);
      circle (random (472, 638), random (187, 278), r);
      circle (random (662, 828), random (187, 278), r);
    }
  stroke (0);
  puzzlex5=170;
  puzzley6=490;
}

void draw () {
  background (wall);
  println (mouseX, mouseY);
  //lines for dimensions of room
  line (150, 0, 150, 400);
  line (150, 400, 0, 500);
  line (150, 400, 900, 400);
  bed (350, 325);
  puzzle (puzzlex5, puzzley6);
  //fill (0, 0, 0, 100);
  //rect (0, 0, width, height);
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
  popMatrix ();
}

void bed (int x, int y) {
  pushMatrix ();
    translate (x, y);
    leg (0, 0);//top left leg
    leg (100, 70);//bottom left leg
    leg (480, 0); //the top right leg
    fill (bedsheets);
    //the white bed
    quad (0, 30, 500, 0, 600, 100, 100, 100);
    quad (0, 0, 0, 30, 50, 40, 50, 10);
    fill (purpleblue);
    //the purple blankets
    noStroke ();
    quad (0, 0, 500, 0, 600, 70, 100, 70);
  popMatrix ();
}

void leg (int x, int y) {
  pushMatrix (); 
    translate (x, y);
    rectMode (CORNER);
    fill (brown);
    rect (0, 0, 20, 150, 5);
  popMatrix ();
}

void puzzle (int x, int y) {
  pushMatrix ();
    translate (x, y);
    rectMode (CENTER);
    fill (lightblue);
    rect (0, 0, 50, 50);//main body of the puzzle piece
    arc (0, -25, 20, 20, PI, TWO_PI);//top circle
    arc (25, 0, 20, 20, PI+HALF_PI, TWO_PI+HALF_PI);//right circle
    arc (0, 25, 20, 20, 0, PI);//bottom circle
    fill (wall);
    arc (-25, 0, 20, 20, PI+HALF_PI, TWO_PI+HALF_PI);
  popMatrix ();
}

void mouseDragged () {
  if (mouseX>puzzlex5-25 && mouseX<puzzlex5+25 && mouseY>puzzley6-25 && mouseY<puzzley6+25) {
    puzzlex5=mouseX;
    puzzley6=mouseY;
  }
}

//to add: night and day? shadows in room? use map function for room shadows, gets darker as you get further away from light source
