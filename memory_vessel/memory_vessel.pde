//number 5
//person doing puzzles at night?

color nightsky=#0D1840;
color brown=#624714;
color wall=#CECDC8;
color purpleblue=#606CE8;
color bedsheets=#E3E3E3;
//PGraphics puzzle1;

void setup () {
  background (wall);
  size (900, 700);
  window (450, 50);//do this in the setupp so the starts don't keep flickering wildly
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
  //puzzle1=createGraphics (width, height);
}

void draw () {
  //background (wall);
  println (mouseX, mouseY);
  //lines for dimensions of room
  line (150, 0, 150, 400);
  line (150, 400, 0, 500);
  line (150, 400, 900, 400);
  bed (350, 325);
  //image (puzzle1, 0, 0);
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
    leg (0, 0);
    leg (100, 70);
    fill (bedsheets);
    quad (0, 30, 500, 0, 600, 100, 100, 100);
    fill (purpleblue);
    noStroke ();
    quad (0, 0, 500, 0, 600, 70, 100, 70);
    //quad (0, 0, 0, 30, 
  popMatrix ();
}

void leg (int x, int y) {
  pushMatrix (); 
    translate (x, y);
    fill (brown);
    rect (0, 0, 20, 150, 5);
  popMatrix ();
}

//void puzzle (int x, int y) {
//  pushMatrix ();
//    translate (x, y);
//    fill (255);
//    rectMode (CENTER);
//    rect (0, 0, 100, 100);
//  popMatrix ();
//}

//void mouseDragged () {
//  puzzle1.beginDraw();
//  puzzle (mouseX, mouseY);
//  puzzle1.endDraw ();
//}

//void mouseReleased () {
//  puzzle1.beginDraw ();
//  puzzle (pmouseX, pmouseY);
//  puzzle1.endDraw ();
//}
