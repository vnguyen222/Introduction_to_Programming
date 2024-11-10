/**************************************************************/

// Lab 7, Part 2
// Vincent Nguyen



// Global Variables
int xCoor, yCoor;
float sizeOfCircle;

// Setup
void setup()
{
  size(1000, 1000);
  background(0);
  xCoor = (int)random(width);
  yCoor = -50;
  sizeOfCircle = (int)random(50, 200);
}

// Drawing Loop
void draw()
{
  background(0);
  
  println("Success");
  fill(255, 0, 255);
  ellipseMode(CENTER);
  ellipse(xCoor, yCoor, sizeOfCircle, sizeOfCircle);
  
  yCoor+=15;
  
  if(yCoor>(height+100))
  {
    yCoor = -50;
    xCoor = (int)random(width);
    sizeOfCircle = (int)random(50, 200);
  }
}


/**************************************************************/
