public class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 3;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = 8;
      xCorners[1] = 16;
      xCorners[2] = -8;
      yCorners[0] = -8;
      yCorners[1] = 16;
      yCorners[2] = 8;
      myColor = color(255,255,255);
      
      myCenterX = 250;
      myCenterY = 250;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = (int)(Math.random()*360);
    }
    //Only private since theres no other use for them besides being in hyperspace for now(stopping and repositioning)
    private void setMyXspeed(double speed){
      myXspeed = speed;
    }
    private void setMyYspeed(double speed){
      myYspeed = speed;
    }
    private void setMyPointDirection(double direction){
      myPointDirection = direction;
    }
    public double getX(){
      return myCenterX;
    }
    public double getY(){
      return myCenterY;
    }
    public void hyperspace(){
      setMyXspeed(0);
      setMyYspeed(0);
      myCenterX = Math.random()*500;
      myCenterY = Math.random()*500;
      setMyPointDirection((int)(Math.random()*360));
    }
    
}
