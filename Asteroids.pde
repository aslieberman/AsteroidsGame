class Asteroid extends Floater {
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

        myColor = color(150); // Gray color for the asteroid
        myCenterX = Math.random() * 800; // Random starting x position
        myCenterY = Math.random() * 600; // Random starting y position
        myXspeed = Math.random() * 2 - 1; // Random x speed between -1 and 1
        myYspeed = Math.random() * 2 - 1; // Random y speed between -1 and 1
        myPointDirection = Math.random() * 360; // Random direction
    }

    // Additional methods for the asteroid (if needed)
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
}
