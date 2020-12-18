public class Bullet extends Floater{
  public Bullet(Spaceship s){
    myCenterX = s.getX();
    myCenterY = s.getY();
    myXspeed = s.getXspeed();
    myYspeed = s.getYspeed();
    myPointDirection = s.getPointDirection()+45;
    accelerate(6);
  }
  public void show(){
    fill(199,234,70);
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
 public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;  
  }
}
