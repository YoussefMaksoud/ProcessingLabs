class SensorDataProvider
{
  String filePath;
  Table dataTable;
  int currentIndex;
  TableRow row;
  
  
  
  void Initialize(String table)
  {
    filePath = table;
    dataTable = loadTable(filePath, "header");
  }
  
 
  
  void readNext()
  {
    if(currentIndex < 599)
    {
       currentIndex ++;
     if(currentIndex > 590){
       menu = true;
      currentIndex = 0;
     }   
    }
  }
  
  
  float readRPM()
  {
   currentData.row = dataTable.getRow(currentIndex);
   vehicle.trip_computer.RPM = row.getFloat("RPM");
   return vehicle.trip_computer.RPM;
  }
  
  
   float readFuelLevel()
  {
   currentData.row = dataTable.getRow(currentIndex+1);
   vehicle.trip_computer.fuelLevel = row.getFloat("Fuel Level (liter)");
   return vehicle.trip_computer.fuelLevel;
  }
  
  float readPreviousFuelLevel()
  {
   currentData.row = dataTable.getRow(currentIndex);
   vehicle.trip_computer.prevFuel = row.getFloat("Fuel Level (liter)");
   return vehicle.trip_computer.prevFuel;
  }
  
  
   float readRatio()
  {
   currentData.row = dataTable.getRow(currentIndex);
   vehicle.trip_computer.gearRatio = row.getFloat("Gear Ratio");
   return vehicle.trip_computer.gearRatio;
  }
  
  
   float readX()
  {
   currentData.row = dataTable.getRow(currentIndex+1);
   comp.x = row.getFloat("X");
   return comp.x;
  }
  
    float readPrevX()
  {
   currentData.row = dataTable.getRow(currentIndex);
   comp.prev_x = row.getFloat("X");
   return comp.prev_x;
  }
  
  
   float readY()
  {
   currentData.row = dataTable.getRow(currentIndex+1);
   comp.y = row.getFloat("Y");
   return comp.y;
  }
  
    float readPrevY()
  {
   currentData.row = dataTable.getRow(currentIndex);
   comp.prev_y = row.getFloat("Y");
   return comp.prev_y;
  }
  
}
  
    
