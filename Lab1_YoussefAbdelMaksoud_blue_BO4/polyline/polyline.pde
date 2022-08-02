float x2 = 0, y2 = 0;
 
void setup () {
  size (800,800);
  background (255,60,100);
  frameRate(10);
}
 
void draw () {
  float x = random (0,800);
  float y = random (0,800);
  line (x2,y2,x,y);
  x2 = x; y2 = y;
    
  }  
