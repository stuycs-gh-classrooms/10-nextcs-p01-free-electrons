class Laser {
  int x, y, s;
  boolean active;
  Laser(int x, int y) {
    this.x = x;
    this.y = y;
    active = true;
    s = -1;
  }
  void display() {
    if (active) {
    stroke(255, 255, 255);
    fill(255, 255, 255);
    rect(x, y, 10, 20);
    }
    if (frameCount % 30 == 0) {
      y += s;
    }
  }

}
