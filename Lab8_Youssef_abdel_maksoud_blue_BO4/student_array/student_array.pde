class Student
{
  int student_id;
  float grade;
}

void PopulateArray(Student [] student_array)
{
 
  for(int i = 0; i < student_array.length; i++)
  {
    student_array[i] = new Student();
    student_array[i].student_id = i+1;
    student_array[i].grade = random(40,100);
    
    println("student", i+1);
    println("id :", student_array[i].student_id + "             " + "grade :", student_array[i].grade);
    println("--------------------------------------");
  }
}

float Calculate_Average (Student [] array_s)
{
  float sum = 0;
  for(int i = 0; i < array_s.length; i++)
  { 
    sum = sum + array_s[i].grade;
  }
  sum /= array_s.length;
  return sum;
}
    

void setup()
{
  Student [] array_1 = new Student[10];
  PopulateArray(array_1);
  println();
  println("average grade is =", Calculate_Average(array_1));
 
  
}
    
    
    
