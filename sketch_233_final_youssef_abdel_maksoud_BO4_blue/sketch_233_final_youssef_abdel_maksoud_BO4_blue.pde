String BMW = "car_status_BMW_323i (1).csv";
String Ford = "car_status_Truck_F150.csv";
String car = BMW;

boolean menu = true;



import org.gicentre.utils.stat.*;
BarChart Fuel_econ;
BarChart Fuel_cons;

//constructing all necessary classes

SensorDataProvider currentData = new SensorDataProvider();
Gauge rev_per_min = new Gauge();
Gauge fuel_level = new Gauge();
Gauge Speed = new Gauge();
Car vehicle = new Car();
Compass comp = new Compass();



//array to calculate average fuel economy
float [] fuel_arr = new float[40];
float fuelEconAve;
float [] fuel_cons = new float[40];
  
  
  //function to give option at the initial menu
  
void keyPressed() 
{
  if (key == '1') {
    menu = false;
    vehicle.radius = 0.23;
    vehicle.tank.capacity = 60;
    currentData.Initialize(BMW);
    car = BMW;
   
  } else if(key == '2'){
    menu = false;
    vehicle.radius = 0.254;
    vehicle.tank.capacity = 80;
    currentData.Initialize(Ford);
    car = Ford;
    
  }else if(key == '3'){
    exit();
  }
}



void setup()
{
  size(1500,1000);
  
  //displays possible options of dashboards

  
  
  //Table dataTable = loadTable(car, "header");
  
  //currentData.currentIndex = 0;

  
}
  


void draw()
{
  if(menu){
  menuDisp();

}
  
  else{

  if(currentData.currentIndex < 595){
  if(key == '1' || key == '2'){
   
  background(255,0,0);
  frameRate(10);
  background(0);
  
  textFont(createFont("Dialog-48", 5), 7);
  
  vehicle.processInput();
  
  //direction stuff
  comp.x_change = currentData.readPrevX() - currentData.readX();
  comp.y_change = currentData.readPrevY() - currentData.readY();
  comp.currentDirection = comp.displayDirection(comp.x_change,comp.y_change);
   
  comp.redArc();
     
  displayConsole();
  //println(menu);
  }
 
  }
  
  }
}

  
  
  
  
  void menuDisp()
  {
  background(0);
  textSize(40);
  text("Please select car",550,300);
  text("1 - BMW",620, 350);
  text("2 - Ford",620, 400);
  text("3 - Exit",620, 450);
  }
  
  

   
   
   
   
   
   
 
  
  
  

  


   
  
  
   
   
  
  
