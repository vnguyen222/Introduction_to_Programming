/**************************************************************/

// Lab 7, Part 3
// Vincent Nguyen

// Global Variables
int xCoor, xConstant, yCoor, yConstant;
int[] backgroundColor = {(int)random(255), (int)random(255), (int)random(255)};
boolean movementFT=true;

// Setup
void setup()
{
  size(1000, 1000);
  frameRate(240);
  xCoor = width/2;
  yCoor = height/2;  
  
  xConstant = (int)random(-25, 25);
  yConstant = (int)random(-25, 25);
}

// Drawing Loop
void draw()
{
  background(backgroundColor[0], backgroundColor[1], backgroundColor[2]);
  strokeWeight(1);
  ellipseMode(CORNER);
  ellipse(xCoor, yCoor, 100, 100);
  
  if(mousePressed){ 
    
  }
  if(movementFT==true)
  {
    xCoor += xConstant;
    yCoor += yConstant;
  }
  if(movementFT==false)
  {  }
  
  if(keyPressed){
    
  }
  
  if((xCoor+100) >= width || xCoor <= 0)
  {
    xConstant *= -1;
  }
  if((yCoor+100) >= height || yCoor <= 0)
  {
    yConstant *= -1;
  }
  
}

void mousePressed()
{
  if(movementFT == true)
  {
    movementFT = false;
  } else if(movementFT == false)
  {
    movementFT = true;
  }
}

void keyPressed()
{
  backgroundColor[0] = (int)random(255);
  backgroundColor[1] = (int)random(255);
  backgroundColor[2] = (int)random(255);
}

/**************************************************************/
