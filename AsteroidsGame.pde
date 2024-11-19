void setup(){
  size(900,900);
  noStroke();
  for(int i = 0; i < starbits.length; i++){
    starbits[i] = new Star();}
  Spaceship bob = new Spaceship();
}
void draw(){
  background(0);
  for(int i = 0; i < starbits.length; i++){
    starbits[i].show();
  }
  bob.show();
}
