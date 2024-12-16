class Asteroid extends Floater {
    private double turnSpeed;
    public Asteroid() {
        corners = 6;
        xCorners = new int[corners];
        yCorners = new int[corners];
        
        xCorners[0] = -11;
        yCorners[0] = -8;
        xCorners[1] = 7;
        yCorners[1] = -8;
        xCorners[2] = 13;
        yCorners[2] = 0;
        xCorners[3] = 6;
        yCorners[3] = 10;
        xCorners[4] = -11;
        yCorners[4] = 8;
        xCorners[5] = -5;
        yCorners[5] = 0;
        
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
