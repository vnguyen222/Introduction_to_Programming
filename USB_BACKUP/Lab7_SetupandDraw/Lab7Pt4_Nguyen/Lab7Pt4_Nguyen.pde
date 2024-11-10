/**************************************************************/

// Lab 7, Part 4
// Vincent Nguyen

// Global Variables
int circleSize;
boolean sizeVariation;

// Setup
void setup()
{
  size(1000, 1000);
  background(0);
  circleSize = 75;
  sizeVariation = true;  // True: Size Increase | False: Size Decrease
}

// Drawing Loop
void draw()
{
  background(0);
  strokeWeight(0);
  ellipseMode(CENTER);
  
  if(sizeVariation == true)
  {
    fill(0, 0, 255);
    ellipse(width/2, height/2, circleSize, circleSize);
    circleSize+=8;
    
    if(circleSize>=width && circleSize>=height)
    {
      sizeVariation = false;
    }
  }
  if(sizeVariation == false)
  {
    fill(255,20,147);
    ellipse(width/2, height/2, circleSize, circleSize);
    circleSize-=8;
    
    if(circleSize<=75 && circleSize<=75)
    {
      sizeVariation = true;
    }
  }
}


/**************************************************************/
