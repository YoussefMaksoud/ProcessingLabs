void setup(){
int [] array_1 = {3,5,4,20,10};
boolean unique = true;

for(int i = 0; i < array_1.length;i++)
{
  for(int j = i+1; j < array_1.length; j++)
  {

    if(array_1[i] == array_1[j])
    {
      unique = false;
   

    }
  }
}

if(unique == false)
{
  print("array is not unique");
}else{
  print("array is unique");
}
}

 
