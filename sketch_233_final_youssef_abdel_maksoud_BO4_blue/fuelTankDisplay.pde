   void fuelTankDisplay()
   {
    
     noStroke();
  fill(0,255,0);
  rect(1050,380,100*(fuel_level.currentValue/vehicle.tank.capacity),40,10);
     
     noFill();
     stroke(255);
  rect(1050,380,100,40,10);



  
  fill(0);
  textSize(20);
  text(vehicle.tank.capacity + "L",1055,408);
  fill(255);
  text("E"+"          "+"F", 1055,440);
  fill(255);
   }
