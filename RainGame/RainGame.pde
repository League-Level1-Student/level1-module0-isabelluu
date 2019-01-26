int score = 0;
int randomNumber = (int) random(width);
int x;
int dropY = 100;
void setup()
{
  size(500, 500);
}

void draw()
{
  dropY++;
  background(#76AA9F);
  
  fill(#146CC1);
  stroke(#146CC1);
  for(int i = 0; i<100; i++)
  {
  ellipse(randomNumber, dropY, 10, 10);
  }

  rect(mouseX, mouseY, 50, 50);
  checkCatch(randomNumber, dropY);
}

void checkCatch(int randomNumber, int dropY)
{
     if (randomNumber > mouseX && randomNumber < mouseX+100 && dropY > mouseY && dropY < mouseY+100)
          {score++;
          draw();}
     else if (score > 0) 
          score--;
     println("Your score is now: " + score); 
     
     fill(0, 0, 0);
     textSize(16);
     text("Score: " + score, 20, 20);
  }