//number 5
//memory could be doing solving puzzles-->to recreate this memory, I made an interactive puzzle

int puzzlex1;
int puzzlex2;
int puzzlex3;
int puzzlex4;
int puzzlex5;
int puzzlex6;
int puzzlex7;
int puzzlex8;
int puzzlex9;
int puzzlex10;
int puzzlex11;
int puzzlex12;
int puzzlex13;
int puzzlex14;
int puzzlex15;
int puzzlex16;
int puzzley1;
int puzzley2;
int puzzley3;
int puzzley4;
int puzzley5;
int puzzley6;
int puzzley7;
int puzzley8;
int puzzley9;
int puzzley10;
int puzzley11;
int puzzley12;
int puzzley13;
int puzzley14;
int puzzley15;
int puzzley16;


void setup () {
size (900, 700);
}


void draw () {
  restart (750, 620);
  println (mouseX, mouseY);
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

void mousePressed () {
  
}

void mouseReleased () {
  
}
