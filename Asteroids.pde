class Asteroid extends Floater {
    private double turnSpeed;
    public Asteroid() {
        corners = 10;
        xCorners = new int[corners];
        yCorners = new int[corners];

        xCorners[0] = -12;
        yCorners[0] = -10;
        xCorners[1] = -4;
        yCorners[1] = -15;
        xCorners[2] = 6;
        yCorners[2] = -12;
        xCorners[3] = 12;
        yCorners[3] = -2;
        xCorners[4] = 7;
        yCorners[4] = 8;
        xCorners[5] = -4;
        yCorners[5] = 10;
        xCorners[6] = -10;
        yCorners[6] = 2;
        xCorners[7] = -12;
        yCorners[7] = 5;
        xCorners[8] = -8;
        yCorners[8] = -4;
        xCorners[9] = -3;
        yCorners[9] = -9;

        myColor = color(150);
        myCenterX = Math.random()*900;
        myCenterY = Math.random()*900;
        myXspeed = Math.random()*3-1;
        myYspeed = Math.random()*3-1;
        myPointDirection = Math.random()*360;
        turnSpeed = Math.random()*6-3;
    }
    public void move() {
        myCenterX += myXspeed;
        myCenterY += myYspeed;
        myPointDirection += turnSpeed;

        if (myPointDirection >= 360) {
            myPointDirection -= 360;
        } else if (myPointDirection < 0) {
            myPointDirection += 360;
        }

        if(myCenterX > width) {
            myCenterX = 0;
        } else if (myCenterX < 0) {
            myCenterX = width;
        }

        if(myCenterY > height) {
            myCenterY = 0;
        } else if (myCenterY < 0) {
            myCenterY = height;
        }
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

    public double getTurnSpeed() {
        return turnSpeed;
    }
}
