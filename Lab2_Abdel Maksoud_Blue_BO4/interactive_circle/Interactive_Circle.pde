size(600,600);
background(50,50,190);

import javax.swing.JOptionPane;

float pi = 3.14;
String inputx;
inputx = JOptionPane.showInputDialog("x coordonate of circle's center point = ");
String inputy;
inputy = JOptionPane.showInputDialog("y coordonate of circle's center point = ");
String inputr;
inputr = JOptionPane.showInputDialog("radius of circle  = ");

int xcoordonate = Integer.parseInt(inputx);
int ycoordonate = Integer.parseInt(inputy);
int radius = Integer.parseInt(inputr);


float area = pi*radius*radius;

fill(255);
ellipse(xcoordonate,ycoordonate,2*radius,2*radius);

fill(0);
line(xcoordonate, ycoordonate, xcoordonate , ycoordonate - radius);

fill(0);
text("area = ",xcoordonate,ycoordonate + 20);
text("radius =", xcoordonate,ycoordonate);
text( area,xcoordonate + 40,ycoordonate + 20);
text(inputr,xcoordonate + 60,ycoordonate );

println("x coordonate of circle's center point = ", inputx);
println("y coordonate of circle's center point = ", inputy);
println("radius of circle  = ", inputr);
println("area of circle  = ", area);
