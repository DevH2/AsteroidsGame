//your variable declarations here
Spaceship spaceship;
Star[] stars = new Star[200];
ArrayList<Asteroid> asteroids;
float d;
public void setup() 
{
  //your code here
  size(500,500);
  spaceship = new Spaceship();
  asteroids = new ArrayList<Asteroid>();
  for(int i = 0; i < stars.length;i++){
    stars[i] = new Star(); 
  }
  for(int i = 0; i<60;i++){
    asteroids.add(new Asteroid());
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
  for(int i = 0; i<asteroids.size();i++){
    asteroids.get(i).show();
    asteroids.get(i).move();
    d = dist((float)spaceship.getX(),(float)spaceship.getY(),(float)asteroids.get(i).getX(),(float)asteroids.get(i).getY());
    if(d<15){
      asteroids.remove(i);
    }
    
  }
  if(asteroids.size()<25){
    asteroids.add(new Asteroid());
  }
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
