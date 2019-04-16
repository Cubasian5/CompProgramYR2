//By: Nicholas Gonzalez 4B //<>// //<>//

Boxes[] myBoxes = new Boxes[16];
Graph xline;
Graph yline;
boolean play = false;
String[] text = new String[16];
//String text = "";
Stopwatch countdown;
int step = 0;
int x = 40;
int y = 20;

void setup() 
{
  size(1000, 1300);
  background(255);
  //int initialCol = 20;
  //int initialRow = 40;
  //for (int col = 0; col < 4; col++)
  //{
  //  initialRow = 0;
  //  for (int row = 0; row < 4; row++)
  //  {
  //    myBoxes[col*4+row] = new Boxes(initialRow, initialCol, 200, 100);
  //    initialRow += 160;
  //  }
  //  initialCol += 130;
  //}
  myBoxes[0] = new Boxes(40, 20, 200, 100);
  myBoxes[1] = new Boxes(280, 20, 200, 100);
  myBoxes[2] = new Boxes(520, 20, 200, 100);
  myBoxes[3] = new Boxes(760, 20, 200, 100);
  myBoxes[4] = new Boxes(40, 150, 200, 100);
  myBoxes[5] = new Boxes(280, 150, 200, 100);
  myBoxes[6] = new Boxes(520, 150, 200, 100);
  myBoxes[7] = new Boxes(760, 150, 200, 100);
  myBoxes[8] = new Boxes(40, 280, 200, 100);
  myBoxes[9] = new Boxes(280, 280, 200, 100);
  myBoxes[10] = new Boxes(520, 280, 200, 100);
  myBoxes[11] = new Boxes(760, 280, 200, 100);
  myBoxes[12] = new Boxes(40, 410, 200, 100);
  myBoxes[13] = new Boxes(280, 410, 200, 100);
  myBoxes[14] = new Boxes(520, 410, 200, 100);
  myBoxes[15] = new Boxes(760, 410, 200, 100);
  xline = new Graph(120, 1200, 900, 1200);
  yline = new Graph(120, 1200, 120, 575);
  
  for (int i = 0; i < text.length; i++)
  {
    text[i] = "";
  }
}


void draw() 
{
  if (!play) {
    startScreen();
  } else {
    vote();
  }
}

void startScreen() 
{
  background(66, 154, 224);
  stroke(255);
  fill(57, 157, 237);
  rect(150, 0, 1000, 900, 0, 0, 0, 500);
  textAlign(CENTER);
  textSize(60);
  fill(255);
  text("Welcome to Weekend Mood App", width/2, height/2-80);
  textSize(20);
  text("By: Nicholas Gonzalez", width/2, height/2-20);
  text("Special thanks to Addison Richey and Mr. Kapptie for making this app possible", width/2, height/2+20);
  text("This is an interactive app which help you and your friends decide on what to do this weekend.\nJust type in what you want to do and then vote with your friends.\nWhatever gets the most votes, wins :)", width/2, height/2+60);
  text("Please press", width/2-160, height/2+200); 
  textSize(25);
  text("START", width/2, height/2+200);
  textSize(20);
  text("if you are ready to begin", width/2+210, height/2+200);
  if (mousePressed) {
    play = true;
  }
}

void vote()
{
  background(255);
  for (int i = 0; i < myBoxes.length; i++) 
  {
    myBoxes[i].display();
    myBoxes[i].hover();
  }
  drawYRef();
  drawXRef();
  xline.display();
  yline.display();
  fill(2, 209, 234);
  int intial = 120;
  for (int i = 0; i < myBoxes.length; i++)
  {
    rect(intial, 1200, 50, myBoxes[i].vote*-39);
    intial += 50;
  }
  fill(0);
  //for (int i = 0; i<text.length; i++)
  //{
  //  String element = text[i];
  //}
  ////text(text, width/2, height/2);
  //if (keyCode == 10)
  //{
  //    text(text, 40, 20, 160, 80);
  //}
  //for (int i = 0; i < text.length; i++)
  //{
    text(text[0], 40, 20, 160, 80);
    text(text[1], 280, 20, 160, 80);
    text(text[2], 520, 20, 160, 80);
    text(text[3], 760, 20, 160, 80);
    text(text[4], 40, 150, 160, 80);
    text(text[5], 280, 150, 160, 80);
    text(text[6], 520, 150, 160, 80);
    text(text[7], 760, 150, 160, 80);
    text(text[8], 40, 280, 160, 80);
    text(text[9], 280, 280, 160, 80);
    text(text[10], 520, 280, 160, 80);
    text(text[11], 760, 280, 160, 80);
    text(text[12], 40, 410, 160, 80);
    text(text[13], 280, 410, 160, 80);
    text(text[14], 520, 410, 160, 80);
    text(text[15], 760, 410, 160, 80);
  //}
}

void drawYRef () {
  fill(0);
  line(120, 1200, 120, 575);
  for (int i = 1200; i>575; i-=39)
  {
    line(120-5, i, 120, i);
  }
}
void drawXRef () {
  fill(0);
  line(120, 1200, 920, 1200);
  for (int i = 120; i<921; i+=50)
  {
    line(i, 1200+5, i, 1200);
  }
}

void mouseReleased() 
{
  for (int i = 0; i<myBoxes.length; i++) {
    if (myBoxes[i].hov) {
      myBoxes[i].click();
    }
  }
}

void keyReleased()
{
  textSize(20);
  fill(0);
  switch(keyCode) {
  case 'q':
  case 'Q':
    text[step] = text[step] + 'q';
    break;
  case 'w':
  case 'W':
    text[step] = text[step] + 'w';
    break;
  case 'e':
  case 'E':
    text[step] = text[step] + 'e';
    break;
  case 'r':
  case 'R':
    text[step] = text[step] + 'r';
    break;
  case 'T':
  case 't':
    text[step] = text[step] + 't';
    break;
  case 'y':
  case 'Y':
    text[step] = text[step] + 'y';
    break;
  case 'u':
  case 'U':
    text[step] = text[step] + 'u';
    break;
  case 'i':
  case 'I':
    text[step] = text[step] + 'i';
    break;
  case 'O':
  case 'o':
    text[step] = text[step] + 'o';
    break;
  case 'p':
  case 'P':
    text[step] = text[step] + 'p';
    break;
  case 'a':
  case 'A':
    text[step] = text[step] + 'a';
    break;
  case 'S':
  case 's':
    text[step] = text[step] + 's';
    break;
  case 'D':
  case 'd':
    text[step] = text[step] + 'd';
    break;
  case 'F':
  case 'f':
    text[step] = text[step] + 'f';
    break;
  case 'G':
  case 'g':
    text[step] = text[step] + 'g';
    break;
  case 'H':
  case 'h':
    text[step] = text[step] + 'h';
    break;
  case 'J':
  case 'j':
    text[step] = text[step] + 'j';
    break;
  case 'K':
  case 'k':
    text[step] = text[step] + 'k';
    break;
  case 'L':
  case 'l':
    text[step] = text[step] + 'l';
    break;
  case 'z':
  case 'Z':
    text[step] = text[step] + 'z';
    break;
  case 'x':
  case 'X':
    text[step] = text[step] + 'x';
    break;
  case 'c':
  case 'C':
    text[step] = text[step] + 'c';
    break;
  case 'v':
  case 'V':
    text[step] = text[step] + 'v';
    break;
  case 'B':
  case 'b':
    text[step] = text[step] + 'b';
    break;
  case 'n':
  case 'N':
    text[step] = text[step] + 'n';
    break;
  case 'm':
  case 'M':
    text[step] = text[step] + 'm';
    break;
  case ',':
    text[step] = text[step] + ',';
    break;
  case ' ':
    text[step] = text[step] + ' ';
    break;
  }
  if (keyCode == BACKSPACE)
  {
    if (text[step].length() != 0)
      text[step] = text[step].substring(0, text[step].length() - 1);
  }
  if (keyCode == 10)
  {
    step++;
    if (step == 16)
      step = 0;
    text[step] = "";
  }
}
