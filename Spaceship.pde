class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 13;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = 16;
      yCorners[0] = 0;
      xCorners[1] = 9;
      yCorners[1] = -6;
      xCorners[2] = 9;
      yCorners[2] = -5;
      xCorners[3] = 1;
      yCorners[3] = -5;
      xCorners[4] = -7;
      yCorners[4] = -8;
      xCorners[5] = -7;
      yCorners[5] = -3;
      xCorners[6] = -10;
      yCorners[6] = -3;
      xCorners[7] = -10;
      yCorners[7] = 3;
      xCorners[8] = -7;
      yCorners[8] = 3;
      xCorners[9] = -7;
      yCorners[9] = 8;
      xCorners[10] = 1;
      yCorners[10] = 5;
      xCorners[11] = 9;
      yCorners[11] = 5;
      xCorners[12] = 9;
      yCorners[12] = 6;
    }
    public void setXspeed(double x) {
      myXspeed = x;
    }
    public void setYspeed(double y) {
      myYspeed = y;
    }
}
Spaceship bob = new Spaceship();

public void keyPressed(){
  if(key == 'h'){
    bob.setXspeed(0);
    bob.setYspeed(0);
  }
}
