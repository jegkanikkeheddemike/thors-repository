void setup(){
size(1920,1080);
}

float x = 0;
float y = 0;
float msize = 50;
float fspeed = 0;
float g = 1.0;
float xd = 1;


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

x += xd;
y += xd;
y += 3*sin(x);


msize += 0.3;
}
