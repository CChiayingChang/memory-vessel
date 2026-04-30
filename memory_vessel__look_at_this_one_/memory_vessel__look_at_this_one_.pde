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
int whichone;//so that the pieces don't stick together


void setup () {
  size (900, 800);
  puzzle1=loadImage ("puzzle1.PNG");
  puzzle2=loadImage ("puzzle2.PNG");
  puzzle3=loadImage ("puzzle3.PNG");
  puzzle4=loadImage ("puzzle4.PNG");
  puzzle5=loadImage ("puzzle5.PNG");
  puzzle6=loadImage ("puzzle6.PNG");
  puzzle7=loadImage ("puzzle7.PNG");
  puzzle8=loadImage ("puzzle8.PNG");
  puzzle9=loadImage ("puzzle9.PNG");
  puzzle10=loadImage ("puzzle10.PNG");
  puzzle11=loadImage ("puzzle11.PNG");
  puzzle12=loadImage ("puzzle12.PNG");
  puzzle13=loadImage ("puzzle13.PNG");
  puzzle14=loadImage ("puzzle14.PNG");
  puzzle15=loadImage ("puzzle15.PNG");
  puzzle16=loadImage ("puzzle16.PNG");
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
  image (puzzle1, puzzlex1, puzzley1, 190, 190);
  image (puzzle2, puzzlex2, puzzley2, 190, 190);
  image (puzzle3, puzzlex3, puzzley3, 190, 190);
  image (puzzle4, puzzlex4, puzzley4, 170, 190);
  image (puzzle5, puzzlex5, puzzley5, 170, 190);
  image (puzzle6, puzzlex6, puzzley6, 170, 190);
  image (puzzle7, puzzlex7, puzzley7, 170, 190);
  image (puzzle8, puzzlex8, puzzley8, 170, 190);
  image (puzzle9, puzzlex9, puzzley9, 170, 190);
  image (puzzle10, puzzlex10, puzzley10, 190, 190);
  image (puzzle11, puzzlex11, puzzley11, 190, 190);
  image (puzzle12, puzzlex12, puzzley12, 190, 190);
  image (puzzle13, puzzlex13, puzzley13, 190, 190);
  image (puzzle14, puzzlex14, puzzley14, 190, 190);
  image (puzzle15, puzzlex15, puzzley15, 190, 190);
  image (puzzle16, puzzlex16, puzzley16, 190, 190);
}

void restart (int x, int y) {//restart button
  pushMatrix ();
    translate (x, y);
    strokeWeight (5);
    if (mouseX>745 && mouseX<855 && mouseY>715&& mouseY<765) {
      stroke (255, 0, 0);
    } else {
      stroke (255);
    }
    fill (255);
    rect (0, 0, 100, 40);
    fill (255, 0, 0);
    textSize (25);
    text ("RESTART", 3, 28);
  popMatrix ();
}

void mousePressed () {
  if (mouseX>750 && mouseX<850 && mouseY>720 && mouseY<760) {//if you press the restart button, resetss to random location
    puzzlex1 =random (95, 805);
    puzzlex2=random (95, 805);
    puzzlex3=random (95, 805);
    puzzlex4=random (95, 805);
    puzzlex5=random (95, 805);
    puzzlex6=random (95, 805);
    puzzlex7=random (95, 805);
    puzzlex8=random (95, 805);
    puzzlex9=random (95, 805);
    puzzlex10=random (95, 805);
    puzzlex11=random (95, 805);
    puzzlex12=random (95, 805);
    puzzlex13=random (95, 805);
    puzzlex14=random (95, 805);
    puzzlex15=random (95, 805);
    puzzlex16=random (95, 805);
    puzzley1=random (95, 625);
    puzzley2=random (95, 625);
    puzzley3=random (95, 625);
    puzzley4=random (95, 625);
    puzzley5=random (95, 625);
    puzzley6=random (95, 625);
    puzzley7=random (95, 625);
    puzzley8=random (95, 625);
    puzzley9=random (95, 625);
    puzzley10=random (95, 625);
    puzzley11=random (95, 625);
    puzzley12=random (95, 625);
    puzzley13=random (95, 625);
    puzzley14=random (95, 625);
    puzzley15=random (95, 625);
    puzzley16=random (95, 625);
  }
    
    
//if i dont add this, then whenever the pieces overlap while im moving them, they get stuck on top of one another and stack, and then the game isn't playable anymore
   if (mouseX>puzzlex1-95 && mouseX<puzzlex1+95 && mouseY>puzzley1-95 && mouseY<puzzley1+95) {
    whichone=1;
  }
  if (mouseX>puzzlex2-95 && mouseX<puzzlex2+95 && mouseY>puzzley2-95 && mouseY<puzzley2+95) {
    whichone=2;
  }
  if (mouseX>puzzlex3-95 && mouseX<puzzlex3+95 && mouseY>puzzley3-95 && mouseY<puzzley3+95) {
    whichone=3;
  }
  if (mouseX>puzzlex4-95 && mouseX<puzzlex4+95 && mouseY>puzzley4-95 && mouseY<puzzley4+95) {
    whichone=4;
  }
  if (mouseX>puzzlex5-95 && mouseX<puzzlex5+95 && mouseY>puzzley5-95 && mouseY<puzzley5+95) {
    whichone=5;
  }
  if (mouseX>puzzlex6-95 && mouseX<puzzlex6+95 && mouseY>puzzley6-95 && mouseY<puzzley6+95) {
    whichone=6;
  }
  if (mouseX>puzzlex7-95 && mouseX<puzzlex7+95 && mouseY>puzzley7-95 && mouseY<puzzley7+95) {
    whichone=7;
  }
  if (mouseX>puzzlex8-95 && mouseX<puzzlex8+95 && mouseY>puzzley8-95 && mouseY<puzzley8+95) {
    whichone=8;
  }
  if (mouseX>puzzlex9-95 && mouseX<puzzlex9+95 && mouseY>puzzley9-95 && mouseY<puzzley9+95) {
    whichone=9;
  }
  if (mouseX>puzzlex10-95 && mouseX<puzzlex10+95 && mouseY>puzzley10-95 && mouseY<puzzley10+95) {
    whichone=10;
  }
  if (mouseX>puzzlex11-95 && mouseX<puzzlex11+95 && mouseY>puzzley11-95 && mouseY<puzzley11+95) {
    whichone=11;
  }
  if (mouseX>puzzlex12-95 && mouseX<puzzlex12+95 && mouseY>puzzley12-95 && mouseY<puzzley12+95) {
    whichone=12;
  }
  if (mouseX>puzzlex13-95 && mouseX<puzzlex13+95 && mouseY>puzzley13-95 && mouseY<puzzley13+95) {
    whichone=13;
  }
  if (mouseX>puzzlex14-95 && mouseX<puzzlex14+95 && mouseY>puzzley14-95 && mouseY<puzzley14+95) {
    whichone=14;
  }
  if (mouseX>puzzlex15-95 && mouseX<puzzlex15+95 && mouseY>puzzley15-95 && mouseY<puzzley15+95) {
    whichone=15;
  }
  if (mouseX>puzzlex16-95 && mouseX<puzzlex16+95 && mouseY>puzzley16-95 && mouseY<puzzley16+95) {
    whichone=16;
  }
}

void mouseReleased () {
  
}

void mouseDragged () {
  if (mouseX>puzzlex1-95 && mouseX<puzzlex1+95 && mouseY>puzzley1-95 && mouseY<puzzley1+95 && whichone==1) {
    puzzlex1=mouseX;
    puzzley1=mouseY;
  }
  if (mouseX>puzzlex2-95 && mouseX<puzzlex2+95 && mouseY>puzzley2-95 && mouseY<puzzley2+95 && whichone==2) {
    puzzlex2=mouseX;
    puzzley2=mouseY;
  }
  if (mouseX>puzzlex3-95 && mouseX<puzzlex3+95 && mouseY>puzzley3-95 && mouseY<puzzley3+95 && whichone==3) {
    puzzlex3=mouseX;
    puzzley3=mouseY;
  }
  if (mouseX>puzzlex4-95 && mouseX<puzzlex4+95 && mouseY>puzzley4-95 && mouseY<puzzley4+95 && whichone==4) {
    puzzlex4=mouseX;
    puzzley4=mouseY;
  }
  if (mouseX>puzzlex5-95 && mouseX<puzzlex5+95 && mouseY>puzzley5-95 && mouseY<puzzley5+95 && whichone==5) {
    puzzlex5=mouseX;
    puzzley5=mouseY;
  }
  if (mouseX>puzzlex6-95 && mouseX<puzzlex6+95 && mouseY>puzzley6-95 && mouseY<puzzley6+95 && whichone==6) {
    puzzlex6=mouseX;
    puzzley6=mouseY;
  }
  if (mouseX>puzzlex7-95 && mouseX<puzzlex7+95 && mouseY>puzzley7-95 && mouseY<puzzley7+95 && whichone==7) {
    puzzlex7=mouseX;
    puzzley7=mouseY;
  }
  if (mouseX>puzzlex8-95 && mouseX<puzzlex8+95 && mouseY>puzzley8-95 && mouseY<puzzley8+95 && whichone==8) {
    puzzlex8=mouseX;
    puzzley8=mouseY;
  }
  if (mouseX>puzzlex9-95 && mouseX<puzzlex9+95 && mouseY>puzzley9-95 && mouseY<puzzley9+95  && whichone==9) {
    puzzlex9=mouseX;
    puzzley9=mouseY;
  }
  if (mouseX>puzzlex10-95 && mouseX<puzzlex10+95 && mouseY>puzzley10-95 && mouseY<puzzley10+95 && whichone==10) {
    puzzlex10=mouseX;
    puzzley10=mouseY;
  }
  if (mouseX>puzzlex11-95 && mouseX<puzzlex11+95 && mouseY>puzzley11-95 && mouseY<puzzley11+95 && whichone==11) {
    puzzlex11=mouseX;
    puzzley11=mouseY;
  }
  if (mouseX>puzzlex12-95 && mouseX<puzzlex12+95 && mouseY>puzzley12-95 && mouseY<puzzley12+95 && whichone==12) {
    puzzlex12=mouseX;
    puzzley12=mouseY;
  }
  if (mouseX>puzzlex13-95 && mouseX<puzzlex13+95 && mouseY>puzzley13-95 && mouseY<puzzley13+95 && whichone==13) {
    puzzlex13=mouseX;
    puzzley13=mouseY;
  }
  if (mouseX>puzzlex14-95 && mouseX<puzzlex14+95 && mouseY>puzzley14-95 && mouseY<puzzley14+95 && whichone==14) {
    puzzlex14=mouseX;
    puzzley14=mouseY;
  }
  if (mouseX>puzzlex15-95 && mouseX<puzzlex15+95 && mouseY>puzzley15-95 && mouseY<puzzley15+95 && whichone==15) {
    puzzlex15=mouseX;
    puzzley15=mouseY;
  }
  if (mouseX>puzzlex16-95 && mouseX<puzzlex16+95 && mouseY>puzzley16-95 && mouseY<puzzley16+95 && whichone==16) {
    puzzlex16=mouseX;
    puzzley16=mouseY;
  }
}

//to do: fix weird stretching, tactile button, tactile puzzle pieces?
