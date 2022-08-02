class Gauge
{
  float Minimum;
  float Maximum;
  float currentValue;
  String Units;
  int x_pos;
  int y_pos;
  
  
  void setCurrentValue (float currentValue)
  {
    if(currentValue >= Minimum && currentValue <= Maximum)
    {
      textSize(35);
      text(nf(currentValue,1,1), x_pos-50, y_pos+5);
    }
  }
  
  void displayGauge()
  {
   noFill();
  strokeWeight(7);
  stroke(0,100,255);
  ellipse(x_pos,y_pos,300,300);
   
    noFill();
  strokeWeight(7);
  stroke(0,100,255);
  ellipse(x_pos+5,y_pos+10,300,300);
  
      noFill();
  strokeWeight(0.7);
  stroke(0,100,255);
  ellipse(x_pos+5,y_pos+5,350,350);
  
        noFill();
  strokeWeight(0.7);
  stroke(0,90,235);
  ellipse(x_pos+5,y_pos+5,346,346);
  
        noFill();
  strokeWeight(0.7);
  stroke(0,75,195);
  ellipse(x_pos+5,y_pos+5,342,342);
  
          noFill();
  strokeWeight(0.7);
  stroke(0,50,150);
  ellipse(x_pos+5,y_pos+5,338,338);
  
          noFill();
  strokeWeight(0.7);
  stroke(0,0,100);
  ellipse(x_pos+5,y_pos+5,334,334);
  
          noFill();
  strokeWeight(0.7);
  stroke(0,0,50);
  ellipse(x_pos+5,y_pos+5,330,330);
 
  noFill();
  stroke(0);
  strokeWeight(8);
  ellipse(x_pos+10,y_pos+5,300,300);
  }
  
}
  
  
