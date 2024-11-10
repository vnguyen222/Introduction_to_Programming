/*****************************************************/
// Lab 8, Part 2
// Vincent Nguyen


// Variables
boolean background = true;

// Setup
void setup()
{
  size(500, 500);
  background(0, 0, 0);
}

// Draw
void draw()
{
  fill(255, 255, 255);
  strokeWeight(3);
  rect(0, 0, (width/10), (width/10));
}

// Mouse Pressed Function
void mousePressed()
{
  if((mouseX >= 0 && mouseX <= (width/10)) && (mouseY >= 0 && mouseY <= (height/10)))
  {
    if(background == true)
    {
      background(0, 255, 255);
      background = false;
    }
    else if(background == false)
    {
      background(0, 0, 0);
      background = true;
    }
  }
}


/*****************************************************/
