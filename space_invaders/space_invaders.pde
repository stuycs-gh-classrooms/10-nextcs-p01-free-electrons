Player player;
Laser l;
int score, lives;
int INVADER_ROWS = 3;
int INVADER_COLS = 5;
int INVADER_SIZE = 25;
InvaderHoard hoard;
Invader alien;
void setup() {
  size(500, 500);
  l = new Laser( 200, 250);
  hoard = new InvaderHoard(INVADER_ROWS, INVADER_COLS, INVADER_SIZE);
  hoard.fillInvaders();
}
void draw(){
  //background(255);
  //hoard.showInvaders();
  //println(hoard.invaders[0][2].center.x);
}
