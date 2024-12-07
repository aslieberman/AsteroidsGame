ArrayList <Asteroid> asteroids;

void setup(){
  size(900,900);
  noStroke();
  for(int i = 0; i < starbits.length; i++){
    starbits[i] = new Star();}
  asteroids = new ArrayList<Asteroid>();
  for (int i = 0; i < 10; i++) {
    asteroids.add(new Asteroid());
}

}

void draw() {
    background(0);
    for (int i = 0; i < starbits.length; i++) {
        starbits[i].show();
    }
    
    bob.move();
    bob.show();
    
    for (int i = asteroids.size() - 1; i >= 0; i--) {
        Asteroid asteroid = asteroids.get(i);
        
        if (isCollision(bob, asteroid)) {
            asteroids.remove(i);
        } else {
            asteroid.show();
            asteroid.move();
        }
    }
}

boolean isCollision(Spaceship ship, Asteroid asteroid) {
    float distance = dist((float)ship.getCenterX(), (float)ship.getCenterY(), (float)asteroid.getCenterX(), (float)asteroid.getCenterY());
    float collisionThreshold = 30;
    
    return distance < collisionThreshold;
}
