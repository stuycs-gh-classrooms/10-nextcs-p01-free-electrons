class InvaderHoard{
  
  
  invader[][] invaders;
  int numrows, numcols;
  
  InvaderHoard(int rows, int cols){
    numrows = rows;
    numcols = cols;
    invaders = new invader[numrows][numcols];
    
  }
  
  
  void fillInvaders(){
    for (i = 0; i < numrows; i++){
      for (j = 0; j < numcols; j++){
        PVector p = new PVector (5 + j, 5 + i);
        invaders[i][j] = new invader();
        
      }
    }
  }
  
  void moveInvaders(){
    
  }
  
  void showInvaders(){
    
  }
  
  boolean processDeath(){
    
  }
  
  void checkEdges(){
    
    
  }
  
  void changeMovement(){
    
  }
  
  
}
