
void setup()
{ 
  int [] students_id= {10001, 20001, 12334, 14332, 99999, 10111, 20101, 12034, 10332, 99991} ;
  double [] midterm_marks = {99, 67, 88, 91, 56, 90, 70, 69, 79, 59};
  double [] final_marks = {89, 76, 80, 67, 99, 98, 56, 96, 90, 60};
  String [] students_name= {"Tim", "Joe", "Ali", "Kim", "Pam", "Rob", "Ben", "Ted", "Lee", "Jim"};

  print_records(students_id, midterm_marks, final_marks, students_name);
  
 // Using array of indices to use as an indicator of the order of teh records based on students id numbers   
 int[] indices = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
 
 // using insertion sort to reorder the indices based on students ids in an ascending order
  sort_records_by_id(indices, students_id);
  
  println();
  
  println("The students records after sorting them by their id numbers are as follows:");
  
  print_sorted_records(indices, students_id, midterm_marks, final_marks, students_name);
  
  // Searching for the position of a student in the array of names and printing his/her records
  // serarching for "Kim"
  
  int position = search(students_name, "Kim");
  
  if(position == -1) {
    println("Search failed: " + "Kim" + " NOT FOUND");
  }
  else {
    double average = calculate_student_average(midterm_marks[position], final_marks[position]);
    
    println(students_name[position] + " was found: id: " + students_id[position] 
           + " midterm mark: " + midterm_marks[position] + ", final mark: " + final_marks[position] 
           + ", term average: " + average + ", and overal grade: " + letter_grade_calculation (average));  
  }      
  
  
  // Searching for "Sam"
  position = search(students_name, "Sam");
    
    if(position == -1) {
    println("Search failed: " + "Sam" + " NOT FOUND");
  }
    else {
    double average = calculate_student_average(midterm_marks[position], final_marks[position]);
    
    println(students_name[position] + " was found: id is: " + students_id[position] 
           + " midterm mark: " + midterm_marks[position] + ", final mark: " + final_marks[position] 
  
           + ", term average: " + average + ", and overal grade: " + letter_grade_calculation (average));  
  }      
}

// function that calculates test average (works)
double calculate_class_average(double [] exam){ 
  
  double sum = 0;
  double average = 0;
  for(int i = 0; i < exam.length; i++){
    sum += exam[i];
  }
    average = sum / exam.length;
    return average;
}



// function that calculates student average (works)
double calculate_student_average(double mid_mark, double final_mark){
  
  return (mid_mark + final_mark)/2;
}



//function that displays the letter grade for student average (works)
char letter_grade_calculation(double student_average){
 
  char grade = '0';
  
  if(student_average >= 90 && student_average <= 100){
    grade = 'A';
  }else if(student_average >= 80 && student_average <= 89){
    grade = 'B';
  }else if(student_average >= 70 && student_average <= 79){
    grade = 'C';
  }else if(student_average >= 60 && student_average <= 69){
    grade = 'D';
  }else if(student_average < 60){
    grade = 'F';
  }
return grade;
}



//prints out the arrays (works);
void print_records(int [] student_id, double [] midterm_marks, double [] final_marks, String [] student_names){
println("name" + "       " + "ID" + "           " + "mid" + "       " + "final" + "      " + "average" + "    " + "grade");
  println("-----------------------------------------------------------------");

    for(int j = 0; j < student_id.length; j++){
      for(int i = 0; i < 1; i++){
        print(student_names[j] + "       " + student_id[j] + "        " + midterm_marks[j] + "        " + final_marks[j] + "       " + calculate_student_average(midterm_marks[j], final_marks[j]) + "        " + letter_grade_calculation(calculate_student_average(midterm_marks[j], final_marks[j])));
      }
  
    println();
  }
  println("-----------------------------------------");
  println("midterm class average is : " + calculate_class_average(midterm_marks));
  println("final class average is : " +calculate_class_average(final_marks));
}

//sorts by id (works)
void sort_records_by_id (int []indices, int []students_id){
  for (int i = 1; i < students_id.length; i++){
    for(int j = i; j > 0 && students_id[indices[j]] < students_id[indices[j-1]]; j--){
      
      int place_holder = indices[j];
      
     
      indices[j] = indices[j-1];
      
  
      indices[j - 1] = place_holder;
      
    }
    
  }

}




// prints sorted records (works)
 void print_sorted_records(int []index, int [] students_id, double [] midterm_marks, double []final_marks, String []students_name){
println("name" + "       " + "ID" + "           " + "mid" + "       " + "final" + "      " + "average" + "    " + "grade");
  println("-----------------------------------------------------------------");

    for(int j = 0; j < students_id.length; j++){
      for(int i = 0; i < 1; i++){
        print(students_name[index[j]] + "       " + students_id[index[j]] + "        " + midterm_marks[index[j]] + "        " + final_marks[index[j]] + "       " + calculate_student_average(midterm_marks[index[j]], final_marks[index[j]]) + "        " + letter_grade_calculation(calculate_student_average(midterm_marks[index[j]], final_marks[index[j]])));
      }
  
    println();
  }
  println("-----------------------------------------");
  println("midterm class average is : " + calculate_class_average(midterm_marks));
  println("final class average is : " +calculate_class_average(final_marks));
}



int search(String [] students_name, String target) {
  int ans = -1;
  for(int i = 0; i < students_name.length; i++){
    if(students_name[i] == target){
      ans = i;
      break;
    }
  }
    return ans;
    
}

   
