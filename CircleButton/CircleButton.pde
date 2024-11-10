int circleX, circleY, circleWidth, circleHeight;
float radius;
boolean backgroundColor;

void setup()
{
  size(500, 500);
  circleX = width/2;
  circleY = height/2;
  circleWidth = width/3;
  circleHeight = height/3;
  
  radius = (circleWidth/2);
  background(255);
  backgroundColor = false;
}

void draw()
{
  if(backgroundColor == false)
  {
    background(255);
  }
  if(backgroundColor == true)
  {
    background(0);
  }
  
  if(mousePressed){}
  
  ellipseMode(CENTER);
  fill(0, 255, 0);
  ellipse(circleX, circleY, circleWidth, circleHeight);
}

void mousePressed()
{
  if(sqrt((sq(mouseX-circleX) + sq(mouseY-circleY))) < radius)
  {
    backgroundColor = !backgroundColor;
  }
}
