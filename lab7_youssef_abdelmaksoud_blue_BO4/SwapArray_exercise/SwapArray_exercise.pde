void setup ()
{
  float [] first_array = {6.7, 5.9, 10, 23, 44, 4.6, 9.1};
  float [] second_array = {11, 12, 13, 14, 15, 16, 17};
  
  SwapArrays(first_array, second_array);
  println("here is the first array:");
  println (first_array);
  println("here is the second array:");
  println (second_array);
}

void SwapArrays(float [] array_1, float [] array_2){
  
  if(array_1.length != array_2.length){
    println("cannot swap array as they are no the same length");
  }
  
  else{
    
    float [] array_extra = new float [array_1.length];
    for(int i = 0; i < array_1.length; i++){
      array_extra[i] = array_1[i];
      array_1[i] = array_2[i];
      array_2[i] = array_extra[i];
    }
  }
}
