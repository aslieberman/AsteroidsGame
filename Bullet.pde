class Bullet extends Floater {
    public Bullet(Spaceship spaceship) {
        myCenterX = spaceship.getCenterX();
        myCenterY = spaceship.getCenterY();
        myXspeed = spaceship.getXspeed();
        myYspeed = spaceship.getYspeed();
        myPointDirection = spaceship.getDirection();
        myColor = color(255, 255, 0);
    }

    public void shoot(double speed) {
        double dRadians = myPointDirection * (Math.PI/180);
        myXspeed += speed*Math.cos(dRadians);
        myYspeed += speed*Math.sin(dRadians);
    }

    public void show() {
        fill(myColor);
        noStroke();
        ellipse((int)myCenterX, (int)myCenterY, 10, 10);
    }
    public double getCenterX() {
        return myCenterX;
    }

    public double getCenterY() {
        return myCenterY;
    }
    public double getXspeed() {
        return myXspeed;
    }

    public double getYspeed() {
        return myYspeed;
    }
}


