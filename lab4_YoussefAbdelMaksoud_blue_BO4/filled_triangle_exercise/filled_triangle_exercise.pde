size(400,400);
background(200);

int x = 0;
int y = 0;

for(x = 0; x < width; x += 20)
{
    for (y = x; y < height; y += 20)
  {
    fill(255);
    rect(y,x,20,20);
     }
}

x = 0;
y = 0;

  for (x = 0, y = x; x < width; x += 20, y += 20)
{

  fill(0);
  rect(y,x,20,20);
 
}
fill(0);
x = 0;
y = 0;
  for (y = height/2-20, x = width/2; x < width; x += 20, y -= 20)
{ 
  rect(x,y,20,20);
}
