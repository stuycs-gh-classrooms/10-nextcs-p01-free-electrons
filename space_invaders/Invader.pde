class Invader {

  PVector center;
  boolean shooter, alive ;
  int size;
  int xspeed, yspeed;
  Invader(PVector c, boolean s, int z ) {
    center = c;
    shooter = s;
    alive = true;
    size = z;
    
  }
  void setSpeed(int newx, int newy) {
    xspeed = newx;
    yspeed = newy;
  }//setSpeed
  void collision(Laser l) {
  
  }
  void move() {
    if (center.x > width - size/2 ||
      center.x < size/2) {
      xspeed*= -1;
    }
    if (center.y > height - size/2 ||
      center.y < size/2) {
      yspeed*= -1;
    }
    center.x+= xspeed;
    center.y+= yspeed;
  }
  void display() {
    if (alive) {
      if (shooter) {
        stroke(0, 0, 0);
        fill(0, 0, 0);
        circle(center.x, center.y, size);
        stroke(255, 0, 0);
        fill (255, 0, 0);
        triangle(center.x - size /2, center.y, center.x + size /2, center.y, center.x, center.y + size /2);
        triangle(center.x - size /2, center.y, center.x + size /2, center.y, center.x, center.y - size /2);
      } else {
        stroke(0, 0, 0);
        fill(0, 0, 0);
        circle(center.x, center.y, size);
        stroke(0, 255, 0);
        fill (0, 255, 0);
        triangle(center.x - size /2, center.y, center.x + size /2, center.y, center.x, center.y + size /2);
        triangle(center.x - size /2, center.y, center.x + size /2, center.y, center.x, center.y - size /2);
      }
    }
  }
}
