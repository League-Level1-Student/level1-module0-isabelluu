int score;
void setup()
{
  size(500, 500);
}

void draw()
{
  background(#407C69);
  
  fill(#62A5AA);
  stroke(#62A5AA);
  ellipse(250, 250, 10, 10);

  int randomNumber = (int) random(width);

  rect(mouseX, mouseY, height, width);
}

void checkCatch(int x)
{
     if (x > mouseX && x < mouseX+100)
          score++;
     else if (score > 0) 
          score--;
     println("Your score is now: " + score); 
     
     fill(0, 0, 0);
     textSize(16);
     text("Score: " + score, 20, 20);
  }