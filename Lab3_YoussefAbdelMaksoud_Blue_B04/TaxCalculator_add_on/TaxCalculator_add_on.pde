// This program prompts and reads a province and a taxable income.  Then,
// using if-else structures, the tax rate is computed for the province
// and the taxable income.  The tax rate and the net income are illustrated
// using a simple bar chart 

import javax.swing.JOptionPane;


//Input Variables
String prov_id = "";                  //province_id will contain the user input for the province (E.g. 'AB'). 
float gross_income = 0;               //gorss_income contains the user input for gross income (E.g. 30000). 

//Output Variables:
//You will store the result of your analysis and calculations in these variables
float tax_rate = 0;                        //Variable tax_rate will hold the tax_rate percentage. You will assign a value for tax_rate based on the Taxable Income (Table 1) table given in the studio project document. 
                                           //The value of tax ranges between 0 to 1 (E.g. for Alberta, income of equal or less than $40000 tax = 0.25)

float net_income = 0;                     //Net income is calculated based on tax_rate. It is the take-home income after taxes are deducted. 
                                          //i.e. net_income = gross_income * (1 - tax_rate); 
                                          
float tax_amount = 0;  //tax amount is the amount of taxes paid based on gross income depending on the province.
                                        //i.e. tax_amount = gross_income * tax_rate;
                                        
                             

// prompt for and read the province id 
prov_id = JOptionPane.showInputDialog("Please enter your province's two-letter abbreviation (e.g., AB for Alberta, ON for ontario, BC for british Columbia, SK for saskatchewan): ");
    
// prompt for and read the gross income
String answer = JOptionPane.showInputDialog("Please enter your taxable income: ");

//convert user input to folat
gross_income = Float.parseFloat(answer);
  


  // Alberta
  if ( prov_id.equals("AB") || prov_id.equals("ab"))
  {
    if(gross_income > 0 && gross_income <= 40000){
      tax_rate = 0.25;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate;
    }
    else if(gross_income > 40000 && gross_income <= 80000){
      tax_rate = 0.32;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate;
    }
    else if(gross_income > 80000 && gross_income <= 120000){
      tax_rate = 0.36;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate;
    }
    else {
      tax_rate = 0.39;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate;
    }
  }
  
  // British Columbia
  if ( prov_id.equals("BC") || prov_id.equals("bc"))
  {
    if(gross_income > 0 && gross_income<= 20000){
      tax_rate = 0.20;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate;
    }
     else if(gross_income > 20000 && gross_income <= 35000){
      tax_rate = 0.225;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate;
    }
     else if(gross_income > 35000 && gross_income <= 50000){
      tax_rate = 0.30;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate;
     }
     else if(gross_income > 50000 && gross_income <= 65000){
      tax_rate = 0.325;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate;
     }
     else if(gross_income > 65000 && gross_income <= 80000){
      tax_rate = 0.365;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate;
     }
     else if(gross_income > 80000 && gross_income <= 100000){
      tax_rate = 0.393;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate;
     }
     else if(gross_income > 100000 && gross_income <= 120000){
      tax_rate = 0.410;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate;
     }
     else {
      tax_rate = 0.440;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate;
     }
  }
 
  
  // Saskatchewan and Ontario
      if ( prov_id.equals("SK") || prov_id.equals("sk") || prov_id.equals("ON") || prov_id.equals("on"))
  {
    if(gross_income > 0 && gross_income<= 40000){
      tax_rate = 0.25;
      net_income = gross_income * (1 - tax_rate);
      tax_amount = gross_income * tax_rate;
    }
    else if(gross_income > 40000 && gross_income<= 60000){
        tax_rate = 0.30;
        net_income = gross_income * (1 - tax_rate);
        tax_amount = gross_income * tax_rate;
    }
    else if(gross_income > 60000 && gross_income<= 80000){
        tax_rate = 0.35;
        net_income = gross_income * (1 - tax_rate);
        tax_amount = gross_income * tax_rate;
    }
    else  if(gross_income > 80000 && gross_income<= 100000){
        tax_rate = 0.40;
        net_income = gross_income * (1 - tax_rate);
        tax_amount = gross_income * tax_rate;
    }
    else if(gross_income > 100000 && gross_income<= 120000){
        tax_rate = 0.45;
        net_income = gross_income * (1 - tax_rate);
        tax_amount = gross_income * tax_rate;
    }
    else {
        tax_rate = 0.50;
        net_income = gross_income * (1 - tax_rate);
        tax_amount = gross_income * tax_rate;
    }
  }
  
  size(600,600);
  background(190);
  
  fill(0,250,250);
  text("Province :", 50, 50); 
  
  fill(0,250,250);
  text(prov_id, 150, 50);
  
  fill(0,0,255);
  text("Gross Income :", 50, 100);
  
  fill(0,0,255);
  text(nf(gross_income,1,2),  150, 100);
  
  fill(0,0,0);
  text("Tax Rate :", 50, 150);
  
  fill(0,0,0);
  text(nf(tax_rate * 100,1,2)+ "%",  150, 150);
  
  
  fill(255,0,0);
  text("Tax Amount :", 50, 200);
  
  fill(255,0,0);
  text(nf(tax_amount,1,2),  150, 200);
  
  fill(0,255,0);
  text("Net Income :", 50, 250);
  
  fill(0,255,0);
  text(nf(net_income,1,2),  150, 250);
  
  fill(0,255,0);
  rect(100,350,400,15);
  fill(255,0,0);
  rect(100,350,tax_rate * 400,15);
  
  
  fill(0,0,255);
  rect(100,400,400,15);
    
