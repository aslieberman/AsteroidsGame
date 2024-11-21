Spaceship bob = new Spaceship();
void setup(){
  size(900,900);
  noStroke();
  for(int i = 0; i < starbits.length; i++){
    starbits[i] = new Star();}

}
void draw(){
  background(0);
  for(int i = 0; i < starbits.length; i++){
    starbits[i].show();
  }
  bob.move();
  bob.show();
}

public void keyPressed() {
    if (key == CODED) {
        if (keyCode == UP) {
            bob.accelerate(.1);
        } else if (keyCode == LEFT) {
            bob.turn(-10);
        } else if (keyCode == RIGHT) {
            bob.turn(10);
        }
    }

    if (key == 'h') {
        bob.setXspeed(0);
        bob.setYspeed(0);
        bob.setCenterX(Math.random()*900);
        bob.setCenterY(Math.random()*900);
        bob.setDirection(Math.random()*360);
    }
}
