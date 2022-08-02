void setup()
{
  int x, y, z;
  int counter = 0;
  
  do {
    
    x = (int)random (1,100);
    y = (int)random (1,100);
    z = (int)random (1,100);
    println("The three numbers generated are:" , x, y, z);
    
    int min = min_of_three(x, y, z);
    int max = max_of_three(x, y, z);
   
    if (is_different(x, y, z))
      print_result (max, min);
      else
      println("The three numbers are the same");
      
    counter++;
  } while (counter < 10);
}

void print_result(int x, int y){
  println("The max and min respectively are:", x, y);
  }
  


boolean is_different(int x, int y, int z)
{
  if(x!= y && y!= z && x!= z)
  {
    return true;
  }else{
    return false;
  }
}

int min_of_three(int x, int y, int z)
{
  int a = greater_of_two(x, y);
  int b = greater_of_two(y, z);
  if(a<b){
    return a;
  }else{
    return b;
  }
}

int max_of_three(int x, int y, int z)
{
    int c = greater_of_two(x,y);
    int d = greater_of_two(y,z);
    if (d>c)
    {
     return d;
    }else{
      return c;
    }
  }
  

 //greater of two funtion 
  int greater_of_two(int x, int y)
{
  if(x > y){
    return x;
  }else{
    return y;
  }
}
