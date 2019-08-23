/*
  Dette skulle være løsningen på "Creature Walk", men der er noget galt!
 
 Opgave 1: Læs programmet med en ven og find ud af hvordan koden fungerer
 Opgave 2: Boldens øjne bevæger sig og forstørres forkert. Det skal rettes
 Opgave 3: Bolden hopper ikke op og ned. Det skal fikses (hint: se ballwalk)
 Opgave 4: Skriv kode-kommentarer, der forklarer dine rettelser og upload til gitHub.
 Opgave 5: Aflever dokument med link på lectio (lectio registrerer ikke en kommentar som aflevering) 
 */

float ballX             = 100, ballY             = 100;  
float speedX            = 1.5, speedY            = 1;
float ballSize          = 50, eyedistance       = ballSize/5;
float eyeSize           = 5;
float zoomFactor        = 1;
float legX, kneeX;
float legY, kneeY;
float hipX, hipY;
float ballYremb = ballY;

//setup: kører kun en gang ved progam-start
// De to tegn: { } betyder kode scope. Variabler har altid et scope de lever indenfor!
void setup() {  
  size(1920, 1080);
}

//draw: kører default 30  gange per sekund
void draw() {                         
  background(255); 
  ballY += speedY;              //bevæge sig ned
  ballYremb += speedY;
  ballY += sin(ballX*0.2)*10; //Hoppe op og ned
  ballX += speedX;             //bevæge sig til siden
  ballSize += zoomFactor;      //Forstørre krop
  eyeSize = ballSize/10;       //Forstørre øjne ift krop
  eyedistance = ballSize/5;    //Flytte øjne it kropstørrelse

  ellipse(ballX, ballY, ballSize, ballSize);           //draw krop
  ellipse(ballX-eyedistance, ballY, eyeSize, eyeSize); //draw left eye
  ellipse(ballX+eyedistance, ballY, eyeSize, eyeSize); //draw right eye
}
