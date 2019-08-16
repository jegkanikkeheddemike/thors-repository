void setup(){
size(1920,1080);
}

float x = 1920/2;
float y = 1080/2;
float msize = 100;
float fspeed = 0;
float g = 1.0;
float xd = 3;


void draw(){
clear();
background(200);
float hsize = msize/2;
float hx = x;
float hy = y-msize/2-hsize/2;
float nsize = hsize/10;
float esize = hsize/5;


fill(248);
ellipse(x,y,msize,msize);                      //body
ellipse(hx,hy,hsize,hsize);                    //head

ellipse(hx-hsize/4,hy,esize,esize);            //left eye
ellipse(hx+hsize/4,hy,esize,esize);            //right eye

rect(hx-nsize/2,hy+hsize/8,nsize,nsize);       //nose

if (y+msize/2+fspeed > 1080){
  y = 1080-msize/2;
  fspeed = -(fspeed+g);
  
}
else{
  fspeed += g;
  y += fspeed;
}
if (x+msize/2+xd >= 1920){
 xd = -xd; 
}
if (x-msize/2+xd <= 0){
 xd = -xd; 
}
x += xd;

msize += 1;
}
