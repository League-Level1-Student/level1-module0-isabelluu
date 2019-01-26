int changeX = 1;
import ddf.minim.*;  
Minim minim;
AudioSample sound;
PImage backgroundImage;
void setup()
{
size(500,500);
background(#FFFFFF);
minim = new Minim (this);
sound = minim.loadSample("pong.wav", 128);
backgroundImage = loadImage("image.jpg");
}

void draw()
{
image(backgroundImage, 0, 0);
image(backgroundImage, 0, 0, width, height);
  changeX++;
  int randomNumber = (int) random(width);
  fill(#66A58D);
  stroke(#66A58D);
  for(int i = 0; i <100; i++)
  {
    ellipse(randomNumber, 220, 10, 10);
  }
  rect(mouseX, mouseY, 10, 10);
  sound.trigger();
  
}