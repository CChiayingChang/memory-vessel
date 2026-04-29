//number 5
//memory could be doing solving puzzles-->to recreate this memory, I made an interactive puzzle

float puzzlex1;
float puzzlex2;
float puzzlex3;
float puzzlex4;
float puzzlex5;
float puzzlex6;
float puzzlex7;
float puzzlex8;
float puzzlex9;
float puzzlex10;
float puzzlex11;
float puzzlex12;
float puzzlex13;
float puzzlex14;
float puzzlex15;
float puzzlex16;
float puzzley1;
float puzzley2;
float puzzley3;
float puzzley4;
float puzzley5;
float puzzley6;
float puzzley7;
float puzzley8;
float puzzley9;
float puzzley10;
float puzzley11;
float puzzley12;
float puzzley13;
float puzzley14;
float puzzley15;
float puzzley16;
PImage puzzle1;
PImage puzzle2;
PImage puzzle3;
PImage puzzle4;
PImage puzzle5;
PImage puzzle6;
PImage puzzle7;
PImage puzzle8;
PImage puzzle9;
PImage puzzle10;
PImage puzzle11;
PImage puzzle12;
PImage puzzle13;
PImage puzzle14;
PImage puzzle15;
PImage puzzle16;


void setup () {
  size (900, 800);
  puzzle1=loadImage ("puzzle1.jpg");
  puzzle2=loadImage ("puzzle2.jpg");
  puzzle3=loadImage ("puzzle3.jpg");
  puzzle4=loadImage ("puzzle4.jpg");
  puzzle5=loadImage ("puzzle5.jpg");
  puzzle6=loadImage ("puzzle6.jpg");
  puzzle7=loadImage ("puzzle7.jpg");
  puzzle8=loadImage ("puzzle8.jpg");
  puzzle9=loadImage ("puzzle9.jpg");
  puzzle10=loadImage ("puzzle10.jpg");
  puzzle11=loadImage ("puzzle11.jpg");
  puzzle12=loadImage ("puzzle12.jpg");
  puzzle13=loadImage ("puzzle13.jpg");
  puzzle14=loadImage ("puzzle14.jpg");
  puzzle15=loadImage ("puzzle15.jpg");
  puzzle16=loadImage ("puzzle16.jpg");
  puzzlex1 =random (50, 750);
  puzzlex2=random (50, 750);
  puzzlex3=random (50, 750);
  puzzlex4=random (50, 750);
  puzzlex5=random (50, 750);
  puzzlex6=random (50, 750);
  puzzlex7=random (50, 750);
  puzzlex8=random (50, 750);
  puzzlex9=random (50, 750);
  puzzlex10=random (50, 750);
  puzzlex11=random (50, 750);
  puzzlex12=random (50, 750);
  puzzlex13=random (50, 750);
  puzzlex14=random (50, 750);
  puzzlex15=random (50, 750);
  puzzlex16=random (50, 750);
  puzzley1=random (50, 670);
  puzzley2=random (50, 670);
  puzzley3=random (50, 670);
  puzzley4=random (50, 670);
  puzzley5=random (50, 670);
  puzzley6=random (50, 670);
  puzzley7=random (50, 670);
  puzzley8=random (50, 670);
  puzzley9=random (50, 670);
  puzzley10=random (50, 670);
  puzzley11=random (50, 670);
  puzzley12=random (50, 670);
  puzzley13=random (50, 670);
  puzzley14=random (50, 670);
  puzzley15=random (50, 670);
  puzzley16=random (50, 670);
}


void draw () {
  background (0);
  restart (750, 720);
  println (mouseX, mouseY);
  //puzzle1 (puzzlex1, puzzley1);
  imageMode (CENTER);
  image (puzzle1, puzzlex1, puzzley1, 100, 100);
  image (puzzle2, puzzlex2, puzzley2, 100, 100);
  image (puzzle3, puzzlex3, puzzley3, 100, 100);
  image (puzzle4, puzzlex4, puzzley4, 100, 100);
  image (puzzle5, puzzlex5, puzzley5, 100, 100);
  image (puzzle6, puzzlex6, puzzley6, 100, 100);
  image (puzzle7, puzzlex7, puzzley7, 100, 100);
  image (puzzle8, puzzlex8, puzzley8, 100, 100);
  image (puzzle9, puzzlex9, puzzley9, 100, 100);
  image (puzzle10, puzzlex10, puzzley10, 100, 100);
  image (puzzle11, puzzlex11, puzzley11, 100, 100);
  image (puzzle12, puzzlex12, puzzley12, 100, 100);
  image (puzzle13, puzzlex13, puzzley13, 100, 100);
  image (puzzle14, puzzlex14, puzzley14, 100, 100);
  image (puzzle15, puzzlex15, puzzley15, 100, 100);
  image (puzzle16, puzzlex16, puzzley16, 100, 100);
}

void restart (int x, int y) {
  pushMatrix ();
    translate (x, y);
    fill (255);
    rect (0, 0, 100, 40);
    fill (255, 0, 0);
    textSize (25);
    text ("RESTART", 3, 28);
  popMatrix ();
}

void puzzlerestart () {

}

void mousePressed () {
  if (mouseX>750 && mouseX<850 && mouseY>720 && mouseY<760) {
    puzzlex1 =random (50, 750);
    puzzlex2=random (50, 750);
    puzzlex3=random (50, 750);
    puzzlex4=random (50, 750);
    puzzlex5=random (50, 750);
    puzzlex6=random (50, 750);
    puzzlex7=random (50, 750);
    puzzlex8=random (50, 750);
    puzzlex9=random (50, 750);
    puzzlex10=random (50, 750);
    puzzlex11=random (50, 750);
    puzzlex12=random (50, 750);
    puzzlex13=random (50, 750);
    puzzlex14=random (50, 750);
    puzzlex15=random (50, 750);
    puzzlex16=random (50, 750);
    puzzley1=random (50, 670);
    puzzley2=random (50, 670);
    puzzley3=random (50, 670);
    puzzley4=random (50, 670);
    puzzley5=random (50, 670);
    puzzley6=random (50, 670);
    puzzley7=random (50, 670);
    puzzley8=random (50, 670);
    puzzley9=random (50, 670);
    puzzley10=random (50, 670);
    puzzley11=random (50, 670);
    puzzley12=random (50, 670);
    puzzley13=random (50, 670);
    puzzley14=random (50, 670);
    puzzley15=random (50, 670);
    puzzley16=random (50, 670);
  }
}

void mouseReleased () {
  
}

void mouseDragged () {
  if (mouseX>puzzlex1-50 && mouseX<puzzlex1+50 && mouseY>puzzley1-50 && mouseY<puzzley1+50) {
    puzzlex1=mouseX;
    puzzley1=mouseY;
  }
  if (mouseX>puzzlex2-50 && mouseX<puzzlex2+50 && mouseY>puzzley2-50 && mouseY<puzzley2+50) {
    puzzlex2=mouseX;
    puzzley2=mouseY;
  }
  if (mouseX>puzzlex3-50 && mouseX<puzzlex3+50 && mouseY>puzzley3-50 && mouseY<puzzley3+50) {
    puzzlex3=mouseX;
    puzzley3=mouseY;
  }
  if (mouseX>puzzlex4-50 && mouseX<puzzlex4+50 && mouseY>puzzley4-50 && mouseY<puzzley4+50) {
    puzzlex4=mouseX;
    puzzley4=mouseY;
  }
  if (mouseX>puzzlex5-50 && mouseX<puzzlex5+50 && mouseY>puzzley5-50 && mouseY<puzzley5+50) {
    puzzlex5=mouseX;
    puzzley5=mouseY;
  }
  if (mouseX>puzzlex6-50 && mouseX<puzzlex6+50 && mouseY>puzzley6-50 && mouseY<puzzley6+50) {
    puzzlex6=mouseX;
    puzzley6=mouseY;
  }
  if (mouseX>puzzlex7-50 && mouseX<puzzlex7+50 && mouseY>puzzley7-50 && mouseY<puzzley7+50) {
    puzzlex7=mouseX;
    puzzley7=mouseY;
  }
  if (mouseX>puzzlex8-50 && mouseX<puzzlex8+50 && mouseY>puzzley8-50 && mouseY<puzzley8+50) {
    puzzlex8=mouseX;
    puzzley8=mouseY;
  }
  if (mouseX>puzzlex9-50 && mouseX<puzzlex9+50 && mouseY>puzzley9-50 && mouseY<puzzley9+50) {
    puzzlex9=mouseX;
    puzzley9=mouseY;
  }
  if (mouseX>puzzlex10-50 && mouseX<puzzlex10+50 && mouseY>puzzley10-50 && mouseY<puzzley10+50) {
    puzzlex10=mouseX;
    puzzley10=mouseY;
  }
  if (mouseX>puzzlex11-50 && mouseX<puzzlex11+50 && mouseY>puzzley11-50 && mouseY<puzzley11+50) {
    puzzlex11=mouseX;
    puzzley11=mouseY;
  }
  if (mouseX>puzzlex12-50 && mouseX<puzzlex12+50 && mouseY>puzzley12-50 && mouseY<puzzley12+50) {
    puzzlex12=mouseX;
    puzzley12=mouseY;
  }
  if (mouseX>puzzlex13-50 && mouseX<puzzlex13+50 && mouseY>puzzley13-50 && mouseY<puzzley13+50) {
    puzzlex13=mouseX;
    puzzley13=mouseY;
  }
  if (mouseX>puzzlex14-50 && mouseX<puzzlex14+50 && mouseY>puzzley14-50 && mouseY<puzzley14+50) {
    puzzlex14=mouseX;
    puzzley14=mouseY;
  }
  if (mouseX>puzzlex15-50 && mouseX<puzzlex15+50 && mouseY>puzzley15-50 && mouseY<puzzley15+50) {
    puzzlex15=mouseX;
    puzzley15=mouseY;
  }
  if (mouseX>puzzlex16-50 && mouseX<puzzlex16+50 && mouseY>puzzley16-50 && mouseY<puzzley16+50) {
    puzzlex16=mouseX;
    puzzley16=mouseY;
  }
}
