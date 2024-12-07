class Spaceship extends Floater {
    public Spaceship() {
        corners = 12;
        xCorners = new int[corners];
        yCorners = new int[corners];
        xCorners[0] = 16;
        yCorners[0] = 0;
        xCorners[1] = 9;
        yCorners[1] = -5;
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

        myColor = (255);
        myCenterX = 450;
        myCenterY =  450;
        myXspeed = 0;
        myYspeed = 0;
        myPointDirection = 0;
    }

    public void setXspeed(double x) {
        myXspeed = x;
    }

    public void setYspeed(double y) {
        myYspeed = y;
    }

    public void setCenterX(double x) {
        myCenterX = x;
    }

    public void setCenterY(double y) {
        myCenterY = y;
    }

    public void setDirection(double direction) {
        myPointDirection = direction;
    }

    public double getDirection() {
        return myPointDirection;
    }

    public double getCenterX() {
        return myCenterX;
    }

    public double getCenterY() {
        return myCenterY;
    }
}

Spaceship bob = new Spaceship();

public void keyPressed() {
    if (key == CODED) {
        if (keyCode == UP) {
            bob.accelerate(0.05);
        } else if (keyCode == LEFT) {
            bob.turn(-2);
        } else if (keyCode == RIGHT) {
            bob.turn(2);
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
