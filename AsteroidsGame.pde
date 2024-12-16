ArrayList<Asteroid> asteroids;
ArrayList<Bullet> bullets;
Star[] starbits = new Star[500];
Spaceship bob;
boolean gameover = false;
boolean win = false;

void setup() {
    size(900, 900);
    noStroke();
    
    bob = new Spaceship();
    bullets = new ArrayList<>();
    asteroids = new ArrayList<>();
    
    for(int i = 0; i < starbits.length; i++) {
        starbits[i] = new Star();
    }
    
    for(int i = 0; i < 30; i++) { //edit amount of asteroids here
        asteroids.add(new Asteroid());
    }
}

void draw() {
    background(0);
    
    for(int i = 0; i < starbits.length; i++) {
        starbits[i].show();
    }
    if(gameover == true){
        textSize(175);
        fill(255,0,0);
        text("GAME OVER", 20, 450); 
    }
    if(win){
        textSize(175);
        fill(0,255,0);
        text("YOU WIN", 125, 450);
    }
    bob.move();
    bob.show();
    
    for(int i = asteroids.size() - 1; i >= 0; i--) {
        Asteroid asteroid = asteroids.get(i);
        
        if(collision(bob, asteroid)) {
            gameover = true;
            bob.setXspeed(0);
            bob.setYspeed(0);
        } else{
            asteroid.show();
            asteroid.move();
        }
    }
    
    for(int i = bullets.size() - 1; i >= 0; i--) {
        Bullet b = bullets.get(i);
        b.move();
        b.show();

        if (b.getCenterX() <= 0 || b.getCenterX() >= 900 || b.getCenterY() <= 0 || b.getCenterY() >= 900) {
          bullets.remove(i);
        }
            for(int j = asteroids.size() - 1; j >= 0; j--) {
                Asteroid asteroid = asteroids.get(j);
                if(collision(b, asteroid)) {
                    asteroids.remove(j);
                    bullets.remove(i);
                    break;
            }
        }
    }
    if (asteroids.size() == 0) {
        win = true;
    }
}
public void keyPressed() {
    if(gameover) return;
    if(key == CODED) {
        if (keyCode == UP) {
            bob.accelerate(0.1);
        } else if (keyCode == LEFT) {
            bob.turn(-5);
        } else if (keyCode == RIGHT) {
            bob.turn(5);
        }
    }

    if(key == 'h') {
        bob.setXspeed(0);
        bob.setYspeed(0);
        bob.setCenterX((int)(Math.random()*900));
        bob.setCenterY((int)(Math.random()*900));
        bob.setDirection((int)(Math.random()*360));
    }
    if(key == ' ') {
        Bullet newBullet = new Bullet(bob);
        newBullet.shoot(5);
        bullets.add(newBullet);
    }
}
boolean collision(Spaceship ship, Asteroid asteroid) {
    float distance = dist((float) ship.getCenterX(), (float) ship.getCenterY(), (float) asteroid.getCenterX(), (float) asteroid.getCenterY());
    float collisionThreshold = 30;
    
    return distance < collisionThreshold;
}

boolean collision(Bullet b, Asteroid asteroid) {
    float distance = dist((float) b.getCenterX(), (float) b.getCenterY(), (float) asteroid.getCenterX(), (float) asteroid.getCenterY());
    float collisionThreshold = 15;
    
    return distance < collisionThreshold;
}
