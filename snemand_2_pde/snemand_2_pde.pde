void setup(){
size(1920,1080);
frameRate(60);
}

float x = 1920/random(10);
float y = 1080/2;
float msize = random(100);
float fspeed = 0;
float g = 1.0;
float xd = 3;

color body = color(204, 102, 0);
color head = color(204, 153, 0);
color eyes = color(153, 51, 0);

void draw(){
clear();                                      //Clear draw
background(200);                              //Colour background
float hsize = msize/2;                        //Adjust size
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

if (y+msize/2+fspeed > 1080){                  //Gravity w/ detection
  y = 1080-msize/2;
  fspeed = -(fspeed+g);
  
}
else{                                          //Gravity w/ no decetion
  fspeed += g;
  y += fspeed;
}
if (x+msize/2+xd >= 1920){                     //Move Right detection
 xd = -xd; 
}

if (x-msize/2+xd <= 0){                        //Move Left Detection
 xd = -xd; 
}
x += xd;

msize += 1;                                    //Increase Size
}
