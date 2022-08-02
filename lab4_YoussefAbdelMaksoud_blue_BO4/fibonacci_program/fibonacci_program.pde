import javax.swing.JOptionPane;
int num;
int fib_num = 0;
int num_2 = 1;
int num_3 = 1;
String Input_Integer;
Input_Integer = JOptionPane.showInputDialog("Please enter positive integer that is >= 3");
num = parseInt(Input_Integer);

while(num < 3)
{
  Input_Integer = JOptionPane.showInputDialog("Error, Please enter positive integer that is >= 3");
num = parseInt(Input_Integer);

}

print("1,1");

while (num >= 3 && fib_num < num)
{
 
  fib_num = num_2 + num_3;
  if(fib_num >= num)
  {
    break;
  }
  
  print("," ,fib_num);
 
  num_3 = num_2;
  
  num_2 = fib_num;
  }

  
