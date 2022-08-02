int x, y;
int limit = 20;
int n;
size(500,500);




for(int a=0,b=0;a<260;a+=20,b+=20){

  for(x=0+a,y=width/2-b; x < width-a; x += 20){
    fill(0);
    quad(x,y,x+10,y+10,x+20,y,x+10,y-10);
}
}

for(int a=0,b=0;a<260;a+=20,b+=20){

  for(x=0+a,y=width/2-b; x < width-a-20; x += 20){
    fill(255);
    quad(x+10,y-10,x+20,y,x+30,y-10,x+20,y-20);
}
}
