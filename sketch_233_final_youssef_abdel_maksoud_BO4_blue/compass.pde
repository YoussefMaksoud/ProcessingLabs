class Compass
{
  float x;
  float y;
  float prev_x;
  float prev_y;
  float x_change;
  float y_change;
  String currentDirection;
  
   String displayDirection(float xChange,float yChange)
  {
    String direction = " ";
    if(xChange > 0 && yChange > 0)
    {
      direction = "NE";
    }else if(xChange > 0 && yChange < 0)
    {
      direction = "SE";
    }else if(xChange < 0 && yChange < 0)
    {
      direction = "SW";
    }else if(xChange < 0 && yChange > 0)
    {
      direction = "NW";
    }else if(xChange == 0 && yChange > 0)
    {
      direction = "N";
    }else if(xChange == 0 && yChange < 0)
    {
      direction = "S";
    }else if(xChange > 0 && yChange == 0)
    {
      direction = "E";
    }else if(xChange < 0 && yChange == 0)
    {
      direction = "W";
    }
    return direction;
  }
  
  void redArc()
  {
    noFill();
   strokeWeight(0.7);
   stroke(0,255,0);
   ellipse(700,45,60,60);
   arc(700,45,64,64,0,PI);
   stroke(0,200,0);
   arc(700,45,68,68,0,PI);
   stroke(0,155,0);
   arc(700,45,72,72,0,PI);
   stroke(0,75,0);
   arc(700,45,76,76,0,PI);
   text(comp.currentDirection,685,50);
   
   //compass
   if(comp.currentDirection == "N")
   {
     strokeWeight(1);
     stroke(255,0,0);
     arc(700,45,80,80,3*PI/2-PI/6,3*PI/2+PI/6);
 
   }else if(comp.currentDirection == "S")
   {
     strokeWeight(1);
     stroke(255,0,0);
     arc(700,45,80,80,PI/2-PI/6,PI/2+PI/6);
    }else if(comp.currentDirection == "E")
   {
     strokeWeight(1);
     stroke(255,0,0);
     arc(700,45,80,80,0-PI/6,0+PI/6);
    }else if(comp.currentDirection == "W")
   {
     strokeWeight(1);
     stroke(255,0,0);
     arc(700,45,80,80,PI-PI/6,PI+PI/6);
    }else if(comp.currentDirection == "NE")
   {
     strokeWeight(1);
     stroke(255,0,0);
     arc(700,45,80,80,7*PI/4-PI/6,7*PI/4+PI/6);
    }else if(comp.currentDirection == "NW")
   {
     strokeWeight(1);
     stroke(255,0,0);
     arc(700,45,80,80,5*PI/4-PI/6,5*PI/4+PI/6);
    }else if(comp.currentDirection == "SE")
   {
     strokeWeight(1);
     stroke(255,0,0);
     arc(700,45,80,80,PI/4-PI/6,PI/4+PI/6);
    }else if(comp.currentDirection == "SW")
   {
     strokeWeight(1);
     stroke(255,0,0);
     arc(700,45,80,80,3*PI/4-PI/6,3*PI/4+PI/6);
   }
  }
}
