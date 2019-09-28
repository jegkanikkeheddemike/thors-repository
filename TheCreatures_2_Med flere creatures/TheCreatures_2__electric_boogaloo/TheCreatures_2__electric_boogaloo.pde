int antal = (int)random(1, 100);  //Hvor mange creatures der er.

float[] x       = new float[antal];    //X koordinat
float[] y       = new float[antal];    //Y koordinat
float[] xspeed  = new float[antal];    //X hastighed
float[] yspeed  = new float[antal];    //Y hastighed
float[] size    = new float[antal];    //Start størrlse
float[] eyesize = new float[antal];    //Størrelse af øjne
float[] eyediv  = new float[antal];    //Forholdet mellem size og eyesize
float[][] rgb   = new float[antal][3]; //Farven. Første dimension i arrayen, er hvilket creatur der har værdien. Anden dimension er enten 0, 1 eller 2. 0 = Rød værdi, 1 = grøn værdi, 2 = blå værdi.
float[] growspeed = new float[antal];  //Hvor hurtigt den vokser / skrumper

void setup() {
  size(1920, 1080);

  for (int i = 0; i < antal; i++) {  //Her bliver alle creatures tildelt deres tilvældige værdier
    x[i] = random(0, 1920);
    y[i] = random(0, 1080);
    size[i] = random(25, 75);
    xspeed[i] = random(-2, 2);
    yspeed[i] = random(-2, 2);
    eyediv[i] = random(5, 15);
    rgb[i][0] = random(0, 255);
    rgb[i][1] = random(0, 255);
    rgb[i][2] = random(0, 255);
    growspeed[i] = random(0.995, 1.005);
  }
}

void draw() {
  clear();
  for (int n=0; n < antal; n++) {
    x[n] += xspeed[n];                  //X koordinat bliver opdateret med hastigheden
    y[n] += yspeed[n];                  //Y koordinat bliver opdateret med hastigheden
    eyesize[n] = size[n]/eyediv[n];     //Øjnestørrelsen bliver opdateret så den passer til størrelsen af creaturet
    Draw_creature(x[n], y[n], size[n], eyesize[n], rgb[n][0], rgb[n][1], rgb[n][2]);    //Den bruger funktionen til at tegne creaturet
    size[n] *= growspeed[n];
  }
}

void Draw_creature(float xdraw, float ydraw, float sizedraw, float eyesize, float draw_r, float draw_g, float draw_b) {  //Her starter funktionen til at tegne creaturet
  fill(draw_r, draw_g, draw_b);  //Farven bliver til RGB værdien
  ellipse(xdraw, ydraw, sizedraw, sizedraw); //tegner krop
  ellipse(xdraw-sizedraw/5, ydraw, eyesize, eyesize); //tegner venste øje
  ellipse(xdraw+sizedraw/5, ydraw, eyesize, eyesize); //tegner højre øje
}
