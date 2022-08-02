class TripComputer
{
  float RPM;
  float gearRatio;
  float totalTravelledDistance;
  float speed;
  float fuelLevel;
  float prevFuel;
  float fuelEconomy;
  float tot_dist;
  
  float totalDistance = 0;
  
  float getCurrentSpeed(float RPM, float gearRatio)
  {
    float speed = (RPM*2*PI*vehicle.radius*3.6)/(60*gearRatio);
    return speed;
  }
  
  float updateTotalDist(float currentSpeed)
  {
   
    totalDistance += (currentSpeed/3600);
    return totalDistance;
  }
    
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
  
  

}
