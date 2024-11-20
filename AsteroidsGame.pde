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
