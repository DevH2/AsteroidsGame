//your variable declarations here
Spaceship spaceship;
Star[] stars = new Star[200];
public void setup() 
{
  //your code here
  size(500,500);
  spaceship = new Spaceship();
  for(int i = 0; i < stars.length;i++){
    stars[i] = new Star(); 
  }
}
public void draw() 
{
  //your code here
  background(0);
  for(int i = 0; i<stars.length;i++){
    stars[i].show();
  }
  spaceship.show();
  spaceship.move();
}
public void keyPressed(){
  if(key == '1'){
    spaceship.turn(-15);
  }
  if(key == '3'){
    spaceship.turn(15);
  }
  if(key == '2'){
    spaceship.accelerate(0.15);
  }
  if(key == '4'){
    spaceship.hyperspace();
  }
}
