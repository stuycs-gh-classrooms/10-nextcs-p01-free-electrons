Player player;
Laser l;
int score, lives;
void setup() {
  size(500, 500);
  l = new Laser( 200, 250);
}
void draw(){
  background(0, 0, 0);
  l.display();
}
