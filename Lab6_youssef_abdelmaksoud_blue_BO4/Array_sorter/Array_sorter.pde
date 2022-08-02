void setup(){
  int x = 0, i = 0, j = 0;
  int n = 5;
  int m = 8;
  int [] Array_1 = new int [n];
  int [] Array_2 = new int [m];
  int [] Array_3 = new int [Array_1.length + Array_2.length];
 //random values for array 1
 
 
 for( i = 0; i < Array_1.length; i++){
  Array_1[i] = (int) random(0,50);
}
// sorts array 1
  Array_1 = sort(Array_1);
 
  //random values for array 2
 for( j = 0; j < Array_2.length; j++){
  Array_2[j] = (int) random(0,50);
 }
 // sorts array 2
  Array_2 = sort(Array_2);
  
for( i = 0, j = 0, x = 0; i < n && j < m; x++)
{
  if(Array_1[i] <= Array_2[j])
  {
    Array_3[x] = Array_1[i];
    i++;
  }
    else 
    {
      Array_3[x] = Array_2[j];
      j++;
    }
}
   
  while (x < Array_3.length)
  {
    if(j < Array_2.length)
    {
    Array_3[x] = Array_2[j];
    j++;
    x++;
    }
  else if(i < Array_1.length)
  {
    Array_3[x] = Array_1[i];
    i++;
    x++;
  }
}
println(Array_3);
}




 
