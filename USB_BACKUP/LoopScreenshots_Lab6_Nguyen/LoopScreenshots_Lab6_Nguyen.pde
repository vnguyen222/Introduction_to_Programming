/********************************************************************************/
// Lab 6: Loop Screenshots
// By: Vincent Nguyen
/********************************************************************************/
/*
// PROJECT 1


// Window and Background Initialization
size(400, 400);

// Variable Initialization
int x1 = 0, y1 = 0, x2 = width, y2= height;

// Drawing Lines Loop
for(int i=1; i<=11; i++)
{
  strokeWeight(3);
  fill(0);
  line(x1, y1, x2, y2);

  x1+=(width/10);
  x2-=(width/10);
}
*/
/********************************************************************************/
/*
// PROJECT 2


// Window and Background Initialization
size(500, 500);

// Variable Initialization
int x=0, y=height-50;

// Drawing Loop
for(int i=1; i<=5; i++)
{
  fill(0);
  square(x, y, 50);
  x+=50;
  y-=50;
  
  fill(255);
  strokeWeight(1);
  ellipseMode(CORNER);
  ellipse(x, y, 50, 50);
  x+=50;
  y-=50;
}
*/
/********************************************************************************/
/*
// PROJECT 3


// Window and Background Initialization
size(500, 500);

// Variable Initialization
int x=0, y=height/2, numOfSquares = 1, strokeValue = 1;

// Drawing Loop
while(numOfSquares <= 10)
{
  fill(255);
  strokeWeight(strokeValue);
  square(x, y, 50);
  strokeValue++;
  x+=50;
}
*/
/********************************************************************************/
/*
// PROJECT 4


// Window and Background Initialization
size(1000, 1000);

// Variable Initialization
int x1=width/2, y1=0, l1 = width, h1 = height, colorDetermine1 = 0, numOfTopArcs = 1;
int x2=width/2, y2=height, l2 = width, h2 = height, colorDetermine2 = 0, numOfBottomArcs = 1;

// Drawing Loop
while(numOfTopArcs <= 10)
{
  
  if(colorDetermine1 > 3)
  {
    colorDetermine1 = 0;  
  }
  
  if(colorDetermine1 == 0)
  {
    fill(255, 255, 0);
  } 
  else if(colorDetermine1 == 1)
  {
    fill(0, 255, 0);
  } 
  else if(colorDetermine1 == 2)
  {
    fill(0, 0, 255);
  }
  else if(colorDetermine1 == 3)
  {
    fill(255, 0, 255);
  }
  
  strokeWeight(1);
  ellipseMode(CENTER);
  ellipse(x1, y1, l1, h1);
  
  colorDetermine1++;
  l1 -= width/10;
  h1 -= width/10;
  numOfTopArcs++;
}
while(numOfBottomArcs <= 10)
{
  
  if(colorDetermine2 > 3)
  {
    colorDetermine2 = 0;  
  }
  
  if(colorDetermine2 == 0)
  {
    fill(255, 255, 0);
  } 
  else if(colorDetermine2 == 1)
  {
    fill(0, 255, 0);
  } 
  else if(colorDetermine2 == 2)
  {
    fill(0, 0, 255);
  }
  else if(colorDetermine2 == 3)
  {
    fill(255, 0, 255);
  }
  
  strokeWeight(1);
  ellipseMode(CENTER);
  ellipse(x2, y2, l2, h2);
  
  colorDetermine2++;
  l2 -= width/10;
  h2 -= width/10;
  numOfBottomArcs++;
}
*/
/********************************************************************************/
