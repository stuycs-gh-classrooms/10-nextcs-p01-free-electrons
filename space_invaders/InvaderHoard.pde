class InvaderHoard {


  Invader[][] invaders;
  int numrows, numcols;
  int size;
  int direction;
  PVector corner;
  int invadersWidth;
  int invadersHeight;
  InvaderHoard(int rows, int cols, int s) {
    numrows = rows;
    numcols = cols;
    invadersWidth = cols * size;
    invadersHeight = rows * size;
    invaders = new Invader[numrows][numcols];
    size =s;
    corner = new PVector(size /2, size /2);
  }


  void fillInvaders() {
    PVector p = new PVector(size / 2, size / 2);
    for (int i = 0; i < invaders.length; i++) {
      for (int j = 0; j < invaders[i].length; j++) {
      if (i == 0) {
        invaders[i][j] = new Invader(p, true, size);
      }
      else {
        invaders[i][j] = new Invader(p, false, size);
      }
                  println("Row: " + i + " Column: " + j);
          println(invaders[i][j].center);
        invaders[i][j].display();
        p.x += size;
      }
      p.y += size;
      p.x = corner.x;
    }
  }

  void moveInvaders() {

    if (direction == DOWN) {
      corner.y+= size;
    } else if (direction == LEFT) {
      corner.x-= size;
    } else if (direction == RIGHT) {
      corner.x+= size;
    }

    for (int r=0; r<invaders.length; r++) {
      for (int c=0; c<invaders[r].length; c++) {
        if (invaders[r][c] != null) {
          invaders[r][c].move();
        }
      }//columns
    }//rows

    checkSpacing();
  }//move

  void checkSpacing() {
    float leftEdge = corner.x - (size/2);
    float rightEdge = leftEdge + invadersWidth;
    float topEdge = corner.y - (size/2);

    //println(rightEdge);

    if (direction == DOWN) {
      if (leftEdge <= 0) {
        direction = RIGHT;
      }
      if (rightEdge >= width) {
        direction = LEFT;
      }
      changeDirection();
    }//switching left/right
    else if (leftEdge <= 0) {
      direction = DOWN;
      changeDirection();
    } else if (rightEdge >= width) {
      direction = DOWN;
      changeDirection();
    }
  }//checkSpacing

  void changeDirection() {
    int newx, newy;
    newx = 0;
    newy = 0;
    if (direction == LEFT) {
      newx = -size;
    }//left
    if (direction == RIGHT) {
      newx = size;
    }//right
    if (direction == DOWN) {
      newy = size;
    }//down

    for (int r=0; r<invaders.length; r++) {
      for (int c=0; c<invaders[r].length; c++) {
        if (invaders[r][c] != null) {
          invaders[r][c].setSpeed(newx, newy);
        }
      }//columns
    }//rows
  }//changeDirection

  void showInvaders() {
    for (int r=0; r<invaders.length; r++) {
      for (int c=0; c<invaders[r].length; c++) {
        if (invaders[r][c] != null) {
          //println("Row: " + r + " Column: " + c);
          //println(invaders[r][c].center);
          invaders[r][c].display();
        }
      }//columns
    }//rows
  }

  boolean processDeath() {
    return true;
  }
}
