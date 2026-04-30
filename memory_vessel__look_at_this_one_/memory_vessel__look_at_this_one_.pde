//number 5
//memory could be doing solving puzzles-->to recreate this memory, I made an interactive puzzle

//puzzle pieces are numbered 1-16, left to right, top to bottom
float puzzlex1;//these will be for the coordiantes of the puzzle pieces
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
PImage puzzle1;//images for puzzle pieces
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
int whichone;//so that the pieces don't stick together-->otherwise, when you click and drag a puzzle piece and go over another puzzle piece, they stack and stick to each other


void setup () {
  size (1200, 600);
  puzzle1=loadImage ("puzzle1.PNG");//loading puzzle images
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
  random ();
}


void draw () {
  background (0);
  for (int i=0; i<500; i+=10) {//generating random stars that flicker
    fill (255);
    noStroke ();
    circle (random (0, 900), random (0, 800), random (0, 5));
  }
  restart (50, 535);//restart button
  println (mouseX, mouseY);
  noFill ();
  stroke (255);
  strokeWeight (3);
  rect (50, 50, 460, 460);//this is the square that the puzzle will fit in
  imageMode (CENTER);//these are all the puzzle pieces
  image (puzzle1, puzzlex1, puzzley1, 190, 190);
  image (puzzle2, puzzlex2, puzzley2, 190, 190);
  image (puzzle3, puzzlex3, puzzley3, 190, 190);
  image (puzzle4, puzzlex4, puzzley4, 190, 190);
  image (puzzle5, puzzlex5, puzzley5, 190, 190);
  image (puzzle6, puzzlex6, puzzley6, 190, 190);
  image (puzzle7, puzzlex7, puzzley7, 190, 190);
  image (puzzle8, puzzlex8, puzzley8, 190, 190);
  image (puzzle9, puzzlex9, puzzley9, 190, 190);
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
    if (mouseX>50 && mouseX<150 && mouseY>535 && mouseY<575) {//tactile button
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
  if (mouseX>50 && mouseX<150 && mouseY>535 && mouseY<575) {//if you press the restart button, resets to random location
    random ();
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

void random () {
  puzzlex1 =random (610, 1100);
  puzzlex2=random (610, 1100);
  puzzlex3=random (610, 1100);
  puzzlex4=random (610, 1100);
  puzzlex5=random (610, 1100);
  puzzlex6=random (610, 1100);
  puzzlex7=random (610, 1100);
  puzzlex8=random (610, 1100);
  puzzlex9=random (610, 1100);
  puzzlex10=random (610, 1100);
  puzzlex11=random (610, 1100);
  puzzlex12=random (610, 1100);
  puzzlex13=random (610, 1100);
  puzzlex14=random (610, 1100);
  puzzlex15=random (610, 1100);
  puzzlex16=random (610, 1100);
  puzzley1=random (90, 510);
  puzzley2=random (90, 510);
  puzzley3=random (90, 510);
  puzzley4=random (90, 510);
  puzzley5=random (90, 510);
  puzzley6=random (90, 510);
  puzzley7=random (90, 510);
  puzzley8=random (90, 510);
  puzzley9=random (90, 510);
  puzzley10=random (90, 510);
  puzzley11=random (90, 510);
  puzzley12=random (90, 510);
  puzzley13=random (90, 510);
  puzzley14=random (90, 510);
  puzzley15=random (90, 510);
  puzzley16=random (90, 510);
}

void mouseReleased () {//when the puzzle piece approaches the correct spot and you release the mouse, the piece snaps into place--> ordered from 1-16
//120
  if (puzzlex1>50 && puzzlex1<165 && puzzley1>50 && puzzley1<165) {
    puzzlex1=107;
    puzzley1=107;
  }
  if (puzzlex2>165 && puzzlex2<280 && puzzley2>50 && puzzley2<165) {
    puzzlex2=222;
    puzzley2=107;
  }
  if (puzzlex3>280 && puzzlex3<395 && puzzley3>50 && puzzley3<165) {
    puzzlex3=337;
    puzzley3=107;
  }
  if (puzzlex4>395 && puzzlex4<510 && puzzley4>50 && puzzley4<165) {
    puzzlex4=452;
    puzzley4=107;
  }
  if (puzzlex5>50 && puzzlex5<165 && puzzley5>165 && puzzley5<280) {
    puzzlex5=107;
    puzzley5=222;
  }
  if (puzzlex6>165 && puzzlex6<280 && puzzley6>165 && puzzley6<280) {
    puzzlex6=222;
    puzzley6=222;
  }
  if (puzzlex7>280 && puzzlex7<395 && puzzley7>165 && puzzley7<280) {
    puzzlex7=337;
    puzzley7=222;
  }
  if (puzzlex8>395 && puzzlex8<510 && puzzley8>165 && puzzley8<280) {
    puzzlex8=452;
    puzzley8=222;
  }
  if (puzzlex9>50 && puzzlex9<165 && puzzley9>280 && puzzley9<395) {
    puzzlex9=107;
    puzzley9=337;
  }
  if (puzzlex10>165 && puzzlex10<280 && puzzley10>280 && puzzley10<395) {
    puzzlex10=222;
    puzzley10=337;
  }
  if (puzzlex11>280 && puzzlex11<395 && puzzley11>280 && puzzley11<395) {
    puzzlex11=337;
    puzzley11=337;
  }
  if (puzzlex12>395 && puzzlex12<510 && puzzley12>280 && puzzley12<395) {
    puzzlex12=452;
    puzzley12=337;
  }
  if (puzzlex13>50 && puzzlex13<165 && puzzley13>395 && puzzley13<510) {
    puzzlex13=107;
    puzzley13=452;
  }
  if (puzzlex14>165 && puzzlex14<280 && puzzley14>395 && puzzley14<510) {
    puzzlex14=222;
    puzzley14=452;
  }
  if (puzzlex15>280 && puzzlex15<395 && puzzley15>395 && puzzley15<510) {
    puzzlex15=337;
    puzzley15=452;
  }
  if (puzzlex16>395 && puzzlex16<510 && puzzley16>395 && puzzley16<510) {
    puzzlex16=452;
    puzzley16=452;
  }
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

//flash when you finish
//move box up
//make it so the puzzle pieces generate outside the box
