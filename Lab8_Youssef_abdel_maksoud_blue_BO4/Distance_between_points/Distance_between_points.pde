class Point
{
  float p_x, p_y, p_z;
}



void setup()
{ 
  Point pt1 = new Point();
  Point pt2 = new Point();
  fillPoint(pt1);
  fillPoint(pt2);
  float distance;
  distance = DistanceBetweenPoints(pt1,pt2);
  println(distance);
  
}




void fillPoint(Point p)
{
  p.p_x = random(1,100);
  p.p_y = random(1,100);
  p.p_z = random(1,100);
  
  println("point x =",p.p_x, "point y =",p.p_y,"point z =", p.p_z);
}

float DistanceBetweenPoints(Point pt1, Point pt2)
{
  float distance = sqrt(pow((pt1.p_x - pt2.p_x),2) + pow((pt1.p_y - pt2.p_y),2) + pow((pt1.p_z - pt2.p_z),2));
  return distance;
}
  
