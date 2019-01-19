import ddf.minim.*;  //at the very top of your sketch
PImage record;
int xPosition = -100;
int yPosition = 1;
int amountToRotate = 1;
int track = 0;
Minim minim;  //as a member variable
AudioPlayer song;  //as a member variable

void setup()
{    
size(610,610);     //in setup method  
record = loadImage("record.png");
//record.resize(height,width); 
background(255);

minim = new Minim(this);  //in the setup method
song = minim.loadFile("song.mp3", 512);//in the setup method
}

void draw()
{
   if (mousePressed == true)
   {
  background(255);
  rotateImage(record, track);
  track++;
  image(record, xPosition, yPosition);
  song.play();
  
   }
   else
   { 
     song.pause();
   }
}

void rotateImage(PImage record, int amountToRotate) 
{
     translate(width/2, height/2);
     rotate(amountToRotate*TWO_PI/200);
     translate(-record.width/2, -record.height/2);
     
}