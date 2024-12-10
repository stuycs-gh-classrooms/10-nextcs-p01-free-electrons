class Player {
int  x, y; 
color c; 

Player( int x, int y) {

  this.x = x;
  this.y = y;
  this.c = #000000;
}
// 8 6 3 1
void display() {
  stroke(c);
  fill(c);
  rect(x, y, 8 * 5, 2.5 * 5);
  rect(x + 1 *5 , y - .5 * 5, 6 * 5, 3 * 5);
  rect(x + 2.5 * 5, y - 1.3 * 5, 3 * 5, 4 * 5);
  rect(x + 3.5 * 5, y - 2.6* 5, 1 * 5, 5 * 5);
}
// positive move right negative move left
void movePlayer(int d) {
x = x  +d;
}
}
