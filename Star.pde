class Star {
 private int x,y,colR,colG,colB;
 private float size;
 public Star(){
   this.x = (int)(Math.random()*500);
   this.y = (int)(Math.random()*500);
   this.size = (float)(Math.random()*4.5+1.5);
   this.colR = (int)(Math.random()*255+60);
   this.colG = (int)(Math.random()*255+60);
   this.colB = (int)(Math.random()*255+60);
 }
 public void show(){
   fill(this.colR,this.colG,this.colB);
   ellipse(this.x,this.y,this.size,this.size);
 }
}
