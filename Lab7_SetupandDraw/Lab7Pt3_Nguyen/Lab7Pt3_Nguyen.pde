/**************************************************************/

// Lab 7, Part 3
// Vincent Nguyen

// Global Variables
int xCoor, xConstant, yCoor, yConstant;

// Setup
void setup()
{
  size(1000, 1000);
  xCoor = width/2;
  yCoor = height/2;
  xConstant = (int)random(10, 20);
  yConstant = (int)random(10, 20);
}

// Drawing Loop
void draw()
{
  background(0);
  strokeWeight(0);
  ellipseMode(CORNER);
  ellipse(xCoor, yCoor, 100, 100);
  xCoor += xConstant;
  yCoor += yConstant;
  
  if((xCoor+100) >= width || xCoor <= 0)
  {
    xConstant *= -1;
  }
  if((yCoor+100) >= height || yCoor <= 0)
  {
    yConstant *= -1;
  }
  
}


/**************************************************************/
