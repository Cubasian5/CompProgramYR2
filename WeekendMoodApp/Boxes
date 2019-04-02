public class Boxes {
  int x;
  int y;
  int w;
  int h;
  int vote;
  boolean hov;

  public Boxes(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
    hov = false;
    vote = 0;
  }

  public void display()
  {
    stroke(0);
    if (hov) {
      fill(2, 234, 163);
    } else {
      fill(2, 209, 234);
    }
    rect(x, y, w, h);
  }
  
  void hover () {
    hov = mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h;
  }

  public void click()
  {
    vote++;
  }
}
