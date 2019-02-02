void setup()
{
  size(350, 350);
  background(#FFFFFF);         
}

void draw()
{
  float maxValue = 0;
  float maxval = random(maxValue);
  for(int i =1; i < 300; i++)
  {
    fill(#236B8B);
    stroke(#236B8B);
    ellipse(maxval, i, 10,10);
  }
  
}

float random(int maxValue)
{
  maxValue = (int) random(width);
  
  return(maxValue);
}

float frequency = .001;
float noiseInterval = PI;

void makeMagical() 
{
     fill( 0, 0, 0, 10 );
     rect(0, 0, width, height);
     noStroke();
}

float getWormX(int i) 
{
     return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i)
{
     return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}