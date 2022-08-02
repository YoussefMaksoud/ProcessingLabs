import javax.swing.JOptionPane;

String inputterm=JOptionPane.showInputDialog("Please Enter a mortgage term eg.(1yr,3yr or 5yr) ");
String inputtype=JOptionPane.showInputDialog("Please Enter a mortgage type eg.(open or closed)");
  
if(inputterm.equals("1yr")){
  if(inputtype.equals ("open")) {
    println("7.10%");
  }
}
if(inputterm.equals("1yr")){
  if(inputtype.equals ("closed")) {
    println("5.30%");
  }
}
if(inputterm.equals("3yr")){
  if(inputtype.equals ("open")) {
    println("7.50%");
  }
}
if(inputterm.equals("3yr")){
  if(inputtype.equals ("closed")) {
    println("5.00%");
  }
}
if(inputterm.equals("5yr")){
  if(inputtype.equals ("open")) {
    println("not available");
  }
}
if(inputterm.equals("5yr")){
  if(inputtype.equals ("closed")) {
    println("5.75");
  }
}
  
  

      
    
   
    
    
    
   



    
