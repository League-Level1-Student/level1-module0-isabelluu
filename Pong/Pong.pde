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
  for(int i = 0; i <1000; i++)
  {
    //image(backgroundImage, 0, 0, width, height);
    ellipse(randomNumber, 220, 10, 10);
  }
  rect(mouseX, mouseY, 50, 50);
  sound.trigger();
  
  //intersects(ballX, ballY, mouseX, mouseY, paddleLength);
  
}

boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength)
{
     if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
          return true;
     else 
          return false;
}