size(200,200);
int [][] array = {{0,1,0,1,1},{1,0,1,0},{0,1},{1,0,1,1,0,0},{0,0,1},{1,1,1,0,0}};
int l = 20;
for(int r = 0, c = 0; r < 6; r++)
{
  for(c = 0; c < array[r].length; c++)
  {
      if(array[r][c] == 0)
      {
    fill(0);
    rect(40 + (20*c),40 + (20*r),l,l);
    }
    else
    {
    fill(255);
    rect(40 + (20*c),40 + (20*r),l,l);
    }
  }
}
  
  
    
  
