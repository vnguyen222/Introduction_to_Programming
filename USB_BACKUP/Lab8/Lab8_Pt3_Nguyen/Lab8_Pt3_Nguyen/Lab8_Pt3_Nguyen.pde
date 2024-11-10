/*************************************************/
// Lab 8, Part 3
// Vincent Nguyen


// Variables
int xCoor, yCoor;

// Setup
void setup()
{
  size(1000, 1000);
  xCoor = width/2;
  yCoor = height/2;
  background(255, 255, 0);
}

// Draw
void draw()
{
  background(255, 255, 0);
  strokeWeight(3);
  ellipseMode(CORNER);
  ellipse(xCoor, yCoor, 100, 100);
  
  // Bounding Box
  if(xCoor <= 0)
  {
    xCoor = 0;
  }
  if((xCoor+100) >= width)
  {
    xCoor = width-100;
  }
  if(yCoor <= 0)
  {
    yCoor = 0;
  }
  if((yCoor+100) >= height)
  {
    yCoor = height-100;
  }
}

void keyPressed()
{
  // Movement
  if(keyPressed)
  {
    if(key == 'w' || keyCode == UP)
    {
      yCoor-=15;
    }
    if(key == 's' || keyCode == DOWN)
    {
      yCoor+=15;
    }
    if(key == 'a' || keyCode == LEFT)
    {
      xCoor-=15;
    }
    if(key == 'd' || keyCode == RIGHT)
    {
      xCoor+=15;
    }
  }
}
