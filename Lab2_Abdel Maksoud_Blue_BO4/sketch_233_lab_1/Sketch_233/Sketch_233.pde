int a = 50;
int b = 20;
int c = 320;
int d = 330;
int e = -250;
int f = -280;
int g = -290;
int h = -220;

void setup() {
size(1000,700); //sets screen bounds;

}
void draw(){
  background(100,100,150);

noStroke();
fill(255,220,150); //ellipse to create yellow moon;
ellipse(500,280,200,200);
fill(100,100,150); //ellipse to cover part of ellipse 1 to make cresent shape;
ellipse(475,255,150,150);


fill(255,255,255); //all the little stars in the night sky filled to different colours;
ellipse(100,100,5,5);
fill(255,255,255);
ellipse(110,150,5,5);
fill(255,255,255);
ellipse(100,110,5,5);
fill(255,255,255);
ellipse(160,170,5,5);
fill(255,255,100);
ellipse(800,200,5,5);
fill(255,255,255);
ellipse(400,80,5,5);
fill(255,255,10);
ellipse(567,370,5,5);
fill(255,255,255);
ellipse(850,100,5,5);
fill(255,255,150);
ellipse(900,200,5,5);
fill(255,255,255);
ellipse(80,400,5,5);
fill(255,255,10);
ellipse(130,410,5,5);
fill(255,255,255);
ellipse(200,300,5,5);
fill(255,255,255);
ellipse(700,500,5,5);
fill(255,255,100);
ellipse(750,300,5,5);
fill(255,255,255);
ellipse(800,500,5,5);
fill(255,255,100);
ellipse(400,100,5,5);
fill(255,255,255);
ellipse(770,300,5,5);
fill(255,255,100);
ellipse(200,100,5,5);

fill(0,0,40);
rect(100,200,200,500,5); //creates building 1 (one with grey frame outline);

fill(155);
rect(100,200,200,5);// grey frames for building 1;
rect(100,250,200,5);
rect(100,300,200,5);
rect(100,350,200,5);
rect(100,400,200,5);
rect(100,450,200,5);
rect(100,500,200,5);
rect(100,550,200,5);
rect(100,600,200,5);
rect(100,650,200,5);
rect(100,200,5,500);
rect(295,200,5,500);


fill(255,255,255); //all of the clouds and theie movement, clouds are endless using the if fuctions at end of code
rect(a,200,200,60,50);
a=a+1;
fill(255,255,255);
rect(b,160,100,60,50);
b=b+1;
fill(255,255,255);
rect(c,220,150,60,50);
c=c+1;
fill(255,255,255);
rect(d,180,100,60,50);
d=d+1;
fill(255,255,255);
rect(e,400,200,60,50);
e=e+1;
fill(255,255,255);
rect(f,360,100,60,50);
f=f+1;
fill(255,255,255);
rect(g,230,150,60,50);
g=g+1;
fill(255,255,255);
rect(h,180,100,60,50);
h=h+1;


noStroke();
fill(0,0,50);
rect(10,500,250,600,7); //code for building 2 (the one with a lot of windows);
fill(0,0,50);
rect(35,490,100,600);

stroke(0,0,0); //all the windows for building 2;
fill(255,255,0);
rect(20, 520,20,20);
fill(255,255,0);
rect(50, 520,20,20);
fill(255,255,0);
rect(80, 520,20,20);
fill(255,255,0);
rect(110, 520,20,20);
fill(255,255,0);
rect(140, 520,20,20);
fill(255,255,0);
rect(170, 520,20,20);
fill(255,255,0);
rect(200, 520,20,20);
fill(255,255,0);
rect(230, 520,20,20);
fill(255,255,0);
rect(20, 550,20,20);
fill(255,255,0);
rect(50, 550,20,20);
fill(255,255,0);
rect(80, 550,20,20);
fill(255,255,0);
rect(110, 550,20,20);
fill(255,255,0);
rect(140, 550,20,20);
fill(255,255,0);
rect(170, 550,20,20);
fill(255,255,0);
rect(200, 550,20,20);
fill(255,255,0);
rect(230, 550,20,20);
fill(255,255,0);
rect(20, 580,20,20);
fill(255,255,100);
rect(50, 580,20,20);
fill(255,255,100);
rect(80, 580,20,20);
fill(255,255,100);
rect(110, 580,20,20);
fill(255,255,0);
rect(140, 580,20,20);
fill(255,255,100);
rect(170, 580,20,20);
fill(255,255,0);
rect(200, 580,20,20);
fill(255,255,100);
rect(230, 580,20,20);
fill(255,255,0);
rect(20, 610,20,20);
fill(255,255,100);
rect(50, 610,20,20);
fill(255,255,0);
rect(80, 610,20,20);
fill(255,255,0);
rect(110, 610,20,20);
fill(255,255,100);
rect(140, 610,20,20);
fill(255,255,0);
rect(170, 610,20,20);
fill(255,255,100);
rect(200, 610,20,20);
fill(255,255,0);
rect(230, 610,20,20);
fill(255,255,0);
rect(20, 640,20,20);
fill(255,255,100);
rect(50, 640,20,20);
fill(255,255,0);
rect(80, 640,20,20);
fill(255,255,100);
rect(110, 640,20,20);
fill(255,255,100);
rect(140, 640,20,20);
fill(255,255,0);
rect(170, 640,20,20);
fill(255,255,0);
rect(200, 640,20,20);
fill(255,255,0);
rect(230, 640,20,20);
fill(255,255,0);
rect(20, 670,20,20);
fill(255,255,100);
rect(50, 670,20,20);
fill(255,255,0);
rect(80, 670,20,20);
fill(255,255,0);
rect(110, 670,20,20);
fill(255,255,0);
rect(140, 670,20,20);
fill(255,255,100);
rect(170, 670,20,20);
fill(255,255,100);
rect(200, 670,20,20);
fill(255,255,100);
rect(230, 670,20,20);

noStroke();
fill(0,0,50); //code for building 3 (the one with the pointy tip);
rect(310,375,125,600,7);
fill(0,0,50);
triangle(430,280,430,380,400,380);

stroke(255,255,255); //rectangular windows for building 3;
fill(255,255,100);
rect(325,400,93,20);
fill(255,255,100);
rect(325,440,93,20);
fill(255,255,100);
rect(325,480,93,20);
fill(255,255,100);
rect(325,520,93,20);
fill(255,255,100);
rect(325,560,93,20);
fill(255,255,100);
rect(325,600,93,20);

stroke(0,0,0);
fill(0,0,50); // code for building 4 with pointy tip and sqaure windows;
rect(475,500,100,200,7);
noStroke();
triangle(475,520,575,520,525,400);


fill(255,255,0); // windows for building 4;
rect(490,520,20,20);
fill(255,255,100);
rect(540,520,20,20);
fill(255,255,0);
rect(490,550,20,20);
fill(255,255,0);
rect(540,550,20,20);
fill(255,255,100);
rect(490,580,20,20);
fill(255,255,0);
rect(540,580,20,20);
fill(255,255,100);
rect(490,610,20,20);
fill(255,255,100);
rect(540,610,20,20);
fill(255,255,0);
rect(490,640,20,20);
fill(255,255,0);
rect(540,640,20,20);

fill(0,0,50); // code for the calgary tower drawing;
arc(840,343,100,100,3.67,5.76);
triangle(837,343,843,343,840,200);
rect(830,285,20,10);
fill(0,0,50);
quad(820,700,860,700,850,350,830,350);
quad(830,375,850,375,865,350,815,350);
fill(90,60,60);
quad(800,350,880,350,890,315,790,315);
fill(200,200,50);
rect(795,322,90,6);

fill(0,0,50);
rect(0,690,1000,10);

textSize(100);
fill(180,100,100);
text("CALGARY",540,600); //sets text size and colours of the text "calgary";

  if(a>1000){
  a=-201;
  }
  if(b>1000){
  b=-101;
  }
  if(c>1000){
  c=-151;
  }
  if(d>1000){
  d=-101;
  }
  if(e>1000){
  e=-201;
  }
  if(f>1000){
  f=-101;
  }
  if(g>1000){
  g=-151;
  }
  if(h>1000){
  h=-101; //above if functions cause the clouds to continue forever;
  
}


}
