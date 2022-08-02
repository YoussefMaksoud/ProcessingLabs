class FuelComputer
{
  float fuelEconomy;
  float fuelConsumption;
  float fuelEconomyHistory;
  float range;
  
  float calcFuelEcon(float travel_dist, float consumed)
  {
    float fuelEcon = 0;
    if(consumed == 0)
    {
      fuelEcon = 1;
    }else{
    fuelEcon = travel_dist/consumed;
    }
    return fuelEcon;
  }
  
  float calcRange(float aveFuelEcon, float remFuel)
  {
    return aveFuelEcon * remFuel;
  }
  
 void fuelEconHist(float [] arr, float var)
 {
   int i = 0;
     for( i = 1; i < fuel_arr.length; i++)
   {
     arr[i-1] = arr[i];
   }
   arr[39] = var;
   
 }
 
float calcAveFuelEcon()
{
  float sum = 0;
  float counter = 1;
  float ave = 0;
  
  for (int i = 0; i < fuel_arr.length;i++, counter++)
  {
    sum += fuel_arr[i];
    if(counter >= 40)
    counter=40;
    
  }
  return sum/counter;
}
}

    
  
    
  
  
 
  
  


   
   
  
  
