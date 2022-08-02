class Car
{
  float radius;
  
  
  TripComputer trip_computer = new TripComputer();
  FuelTank tank = new FuelTank();
  FuelComputer fuel_comp = new FuelComputer(); 
  
  void processInput()
  {
    //fuelTankDisplay();
  
  rev_per_min.Minimum = 600;
  rev_per_min.Maximum = 2400;
  rev_per_min.currentValue = currentData.readRPM();
  rev_per_min.Units = ("Revolutions/Minute");
  rev_per_min.x_pos = 300;
  rev_per_min.y_pos = 350;
  
  rev_per_min.setCurrentValue(rev_per_min.currentValue);
  rev_per_min.displayGauge();
  
   textSize(30);
   text("RPM", 265,450);
   
   //makes the RPM arc above the gauge, changes as RPM changes
   stroke(0);
   strokeWeight(10);
    arc(300,350,260,260,PI,PI+PI);
  
  if(rev_per_min.currentValue>0 && rev_per_min.currentValue<1000){ 
   stroke(255);
   strokeWeight(10);
   arc(305,350,350,350,PI,(PI)+(PI*(rev_per_min.currentValue/2400)));
  }else if(rev_per_min.currentValue>=1000 && currentData.readRPM() < 2000){
   stroke(0,255,0);
   strokeWeight(10);
   arc(305,350,350,350,PI,(PI)+(PI*(rev_per_min.currentValue/2400)));
  }else{
   stroke(255, 0,0);
   strokeWeight(10);
   arc(305,350,350,350,PI,(PI)+(PI*(rev_per_min.currentValue/2400)));
  }
    
    
   
   
  
    //setup for fuel level gauge
    fuel_level.Minimum = 47;
  fuel_level.Maximum = 80;
  fuel_level.currentValue = currentData.readFuelLevel();
  fuel_level.Units = ("litres");
  fuel_level.x_pos = 1100;
  fuel_level.y_pos = 350;
  
   fuel_level.setCurrentValue(fuel_level.currentValue);
   fuel_level.displayGauge();
   
  // textSize(30);
  // text("Fuel Level", 1025,530);
   
   //setup for speed gauge
   
   

   vehicle.trip_computer.speed = vehicle.trip_computer.getCurrentSpeed(currentData.readRPM(), currentData.readRatio());
 
   
   Speed.Minimum = 0;
  Speed.Maximum = 600;
  Speed.currentValue = vehicle.trip_computer.speed;
  Speed.Units = ("km/h");
  Speed.x_pos = 690;
  Speed.y_pos = 300;
  
  
 noStroke();
  fill(255);
 
  ellipse(Speed.x_pos,Speed.y_pos,250,250);
  
  
  noStroke();
  fill(0,150,0);
arc(Speed.x_pos,Speed.y_pos,280,280,PI-PI/6,2*PI+PI/6,CHORD);
fill(255,0,0);
arc(Speed.x_pos,Speed.y_pos,280,280,PI+PI/6,2*PI-PI/6,CHORD);
  
  noStroke();
  fill(0);
  ellipse(Speed.x_pos,Speed.y_pos,150,350);
  
  for(int i = 1; i < 9; i++)
  {
    fill(0);
    rect(530,170+40*i,320,10);
  }
   


  rect(530,150,320,270- (270*(Speed.currentValue/180)));




  fill(255);
  Speed.setCurrentValue(Speed.currentValue);
  Speed.displayGauge();
  
  textSize(30);
  fill(255);
  text("km/h", 630, 350);
  
  
  
  
  strokeWeight(5);
  fuelTankDisplay();
  
  //odometer stuff
  fill(0,255,0);
  text("Total Distance:"+"            " + "Km" + "   |  ",400,530);
  
  if(currentData.currentIndex < 599)
    {
      vehicle.trip_computer.tot_dist = vehicle.trip_computer.updateTotalDist(Speed.currentValue);
      fill(0,255,0);
      text(vehicle.trip_computer.tot_dist ,540,530);
    }else{
      fill(0,255,0);
      text(vehicle.trip_computer.tot_dist ,540,530);
    }
    
    
   //fuel tank stuff
    vehicle.tank.prev_fuel = currentData.readPreviousFuelLevel();
    vehicle.tank.fuelLevel = fuel_level.currentValue;
    vehicle.tank.consumedFuel = vehicle.tank.consumedFuel(vehicle.tank.fuelLevel, vehicle.tank.prev_fuel); 
    
    
    vehicle.fuel_comp.fuelEconomy = vehicle.fuel_comp.calcFuelEcon(Speed.currentValue/3600,vehicle.tank.consumedFuel);
    fill(0,255,0);
    text("Fuel Economy: " + vehicle.fuel_comp.fuelEconomy + "  " + "Km/L",700,530);
    
   
   
   //average fuel econ array and other stuff
 vehicle.fuel_comp.fuelEconHist(fuel_arr,vehicle.fuel_comp.fuelEconomy);
 float aveFuelEcon = vehicle.fuel_comp.calcAveFuelEcon();
 vehicle.fuel_comp.range = aveFuelEcon*vehicle.tank.fuelLevel;
 text("distance until empty:  " + vehicle.fuel_comp.range + "  Km", 500,505);
 
 
 //fuel cons / 100km
 float consumedFuel = 100/aveFuelEcon;
 text("consumed fuel" , 1030,250);
 text(consumedFuel + "   L/100 Km",1000,300);
 
 
vehicle.fuel_comp.fuelEconHist(fuel_cons,consumedFuel);
createchart(fuel_arr,50,650,"Average Fuel Economy History");
createchart(fuel_cons,950,650,"Consumed Fuel");

if(currentData.currentIndex > 590)
menu =true;
//currentData.currentIndex = 0;


    currentData.readNext();
  }
}
