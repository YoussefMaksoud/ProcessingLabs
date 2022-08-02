int index = 3;
float var = 255;
void setup ()
{
float [] array = {6.7, 5.9, 10, 23, 44, 4.6, 9.1, 100, 79};
array = InsertAt(array, var, index);
println (array);
}

float[] InsertAt(float [] array_1, float var, int index){
  if (index < 0 || index > array_1.length){
    println("error, here is the original unchanged array:");
    return array_1;
  }
  
  float [] array_2 = new float [array_1.length + 1];
  for(int i = array_2.length - 1; i >= index; i --){
    for(int j = 0; j < index; j ++){
    array_2[j] = array_1[j];
    }
    array_2[i] = array_1[i - 1];
  }
  array_2[index] = var;
  return array_2;
}
