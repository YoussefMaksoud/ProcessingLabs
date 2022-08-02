int headbodyx = 117;
int neckleftx = 150;
int neckrightx = 183;
int leftarmx = 47;
int rightarmx = 217;
int leftlegxa =127;
int leftlegxb = 147;
int rightlegxa = 207;
int rightlegxb = 187;
int lefteyex = 142;
int righteyex = 192;
int arcx = 167;

int heady = 530;
int bodyy = 660;
int necky = 630;
int necky2 = 660;
int upperarmy = 690;
int lowerarmy = 710;
int legsy = 800;
int legsy2 = 895;
int eyey = 565;
int arcy = 592;
int rightarmx2 = 287;

  void setup(){
    size(1000,1000);
    background(255,100,110);
 }

  void draw(){ 
    background(255,100,110);
    fill(255);
    rect(headbodyx,heady,100,100);// head
    rect(headbodyx,bodyy,100,140);// body
    noFill();
    
    line(neckleftx,necky,neckleftx,necky2);//neck;
    line(neckrightx,necky,neckrightx,necky2);

    line(leftarmx,upperarmy,headbodyx,upperarmy);// left arm;
    line(leftarmx,lowerarmy,headbodyx,lowerarmy);
    
    line(rightarmx,upperarmy,rightarmx2,upperarmy);// right arm;
    line(rightarmx,lowerarmy,rightarmx2,lowerarmy);
    
    line(leftlegxa,legsy,leftlegxa,legsy2);// left leg;
    line(leftlegxb,legsy,leftlegxb,legsy2);
    
    line(rightlegxa,legsy,rightlegxa,legsy2);// right leg;
    line(rightlegxb,legsy,rightlegxb,legsy2);
    
    ellipse(lefteyex,eyey,20,35);// left eye
    ellipse(righteyex,eyey,20,35);// right eye
    
    arc(arcx,arcy,32,32,0,3.14);
    
   headbodyx = headbodyx + 2;
   neckleftx = neckleftx + 2;
   neckrightx = neckrightx + 2;
   leftarmx = leftarmx + 2 ;
   rightarmx = rightarmx + 2;
   leftlegxa = leftlegxa + 2;
   leftlegxb = leftlegxb + 2;
   rightlegxa = rightlegxa + 2;
   rightlegxb = rightlegxb + 2;
   lefteyex = lefteyex + 2 ;
   righteyex = righteyex + 2 ;
   arcx = arcx + 2;
  
   heady = heady - 2;
   bodyy = bodyy - 2;
   necky = necky - 2;
   necky2 = necky2 - 2;
   upperarmy = upperarmy - 2;
   lowerarmy = lowerarmy - 2;
   legsy = legsy - 2;
   legsy2 = legsy2 - 2;
   eyey = eyey - 2;
   arcy = arcy - 2;
   rightarmx2 = rightarmx2 + 2;
      
    
  }
  
