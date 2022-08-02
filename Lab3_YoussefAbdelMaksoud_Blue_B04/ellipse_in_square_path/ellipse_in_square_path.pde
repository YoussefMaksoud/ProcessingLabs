int x = 30;
int y = 30;
int r = 30;

void setup(){
  size(400,400);
  background(255,100,100);
}

void draw(){
  background(255,100,100);
  ellipse(x,y,r,r);

  if(x < 370 && y == 30){
    x++;
  }
  if(x == 370 && y < 370){
    y++;
  }
  if(x > 30 && y == 370){
    x = x-1;
    y = 370;
  }
  if(x == 30 && y <= 370){
    y--;
  }
 


}
