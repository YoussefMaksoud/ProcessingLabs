float a = 500;
float b = 560;
float c = 650;
float d = 720;
float e = 820;

int colour = 100;



void displayConsole()
{
  //weather console
   fill(0,20,colour);
   stroke(255);
   colour += 4;
   if(colour >250)
   {
     colour = 100;
   }
   rect(500,550,400,200,10);
   fill(255);
   text("weather is partly cloudy",540,575);
   
   fill(255,200,0);
   ellipse(750, 650,70,70);
   
   fill(255);
   rect(a,600,40,10,50);
    a=a+3;
    fill(255,255,255);
    rect(b,660,50,30,50);
    b=b+3;
    fill(255,255,255);
    rect(c,620,50,30,50);
    c=c+3;
    fill(255,255,255);
    rect(d,680,70,30,50);
    d=d+3;
    fill(255,255,255);
    rect(e,700,40,30,50);
    e=e+3;
    
    if(a >= 820){
      a = 530;
    }
      if(b >= 820){
      b = 530;
      }
      if(c >= 820){
      c = 530;
      }
      if(d >= 820){
      d = 530;
      }
      if(e >= 820){
      e = 530;
      }
   
   textSize(30);
   text("16 °C",540,650);
   
   textSize(10);
   text("humidity : Low",550,600);
   
   fill(255);
}
