class FuelTank
{
  float capacity;
  float fuelLevel;
  float prev_fuel;
  float consumedFuel;
  
  float consumedFuel(float current, float previous)
  {
    float consumed_fuel = previous - current;
    previous = current;
    return consumed_fuel;
  }
  
}
