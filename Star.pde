class Star{
  private double myX, myY, myWidth, myHeight;
  private double myColor;

  public Star(){
    myX = (int)(Math.random()*900);
    myY = (int)(Math.random()*900);
    myWidth = 5;
    myHeight = 5;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  public void show(){
    noStroke();
    fill((int)myColor);
    ellipse((int)myX,(int)myY,(int)myWidth,(int)myHeight);
  }
}
Star [] starbits = new Star[300];
