import javax.swing.JOptionPane;
void setup () {
 int max, column, row, x = 20, y = 20;
 size (850, 850);
 background(0);
 
 do {
 String answer = JOptionPane.showInputDialog("How many rows would you like in your times table?"+ "\nEnter a number between 1 and 16.");
 max = Integer.parseInt(answer);
 } while (max < 1 || max >16);
 // Display the header row of the table.
 text("X", x, y);
 x += 50;
 

 for (column = 1; column <= max; column++) {
 text ( Integer.toString(column), x, y);
 x +=50;
 }


 // Display all the other rows of the table, using a nested loop.
 x = 20;
 y = 20;
 
  for(row = 1; row <= max; row++) {
   y += 50;
  text (Integer.toString(row), x, y);
  }

x = 70;
y = 70;

for(column = 1, row = 1; row <= max; row++, column++) {
  int ans = row*column;
  text (Integer.toString(ans),x,y);
  y += 50;
  x += 50;
  }
  
  x = 70;
  y = 20 + (max*50);

  
for(row = max, column = max - 2; row > column; max--, column --){
  x = 70;
  for( row = max, column = 1; column < max; column ++){
  int ans = column * row;
  text(Integer.toString(ans),x,y);
    x += 50;
}

y -= 50;
}
}
