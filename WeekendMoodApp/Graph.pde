public class Graph {
  int x;
  int y;
  int w;
  int h;
  
  public Graph(int x, int y, int w, int h)
  {
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
  }
  
  public void display()
  {
    fill(0);
    line(x,y,w,h);
  }
 
}
