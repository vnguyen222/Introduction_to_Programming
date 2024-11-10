/**************************************************************/

// Lab 7, Part 3
// Vincent Nguyen

// Global Variables
int xCoor, xConstant, yCoor, yConstant;
int xCoor2, xConstant2, yCoor2, yConstant2;

// Setup
void setup()
{
  size(displayWidth, displayHeight);
  xCoor = width/2;
  yCoor = height/2;
  xCoor2 = width/2;
  yCoor2 = height/2;
  xConstant = (int)random(1, 20);
  yConstant = (int)random(1, 30);
  xConstant2 = (int)random(1, 20);
  yConstant2 = (int)random(1, 30);
}

// Drawing Loop
void draw()
{
  background(0);
  strokeWeight(0);
  ellipseMode(CORNER);
  fill(255);
  ellipse(xCoor, yCoor, 100, 100);
  fill(255, 0, 0);
  ellipse(xCoor2, yCoor2, 150, 150);
  xCoor += xConstant;
  yCoor += yConstant;
  xCoor2 += xConstant2;
  yCoor2 += yConstant2;
  
  if((xCoor+100) >= width || xCoor <= 0)
  {
    xConstant *= -1;
  }
  if((yCoor+100) >= height || yCoor <= 0)
  {
    yConstant *= -1;
  }
  
  if((xCoor2+150) >= width || xCoor2 <= 0)
  {
    xConstant2 *= -1;
  }
  if((yCoor2+150) >= height || yCoor2 <= 0)
  {
    yConstant2 *= -1;
  }
}


/**************************************************************/
