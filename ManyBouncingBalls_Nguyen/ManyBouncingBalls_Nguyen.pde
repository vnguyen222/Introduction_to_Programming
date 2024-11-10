/************************************************************/
// Week 15 - Many Bouncing Balls
// Vincent Nguyen


// GLOBAL VARIABLES
int numberOfBalls = 100;
float xCoor[] = new float[numberOfBalls];
float yCoor[] = new float[numberOfBalls];
float speed[] = new float[numberOfBalls];
final int diameter = 25;

// SETUP FUNCTION
void setup()
{
  size(1000, 1000);
  frameRate(144);
  generateUnits();
}

// DRAW FUNCTION
void draw()
{
  background(0);
  drawBalls();
}

void drawBalls()
{
  for(int i = 0; i < numberOfBalls; i++)
  {
    yCoor[i] += speed[i];
    if(yCoor[i] - diameter / 2 < 0 || yCoor[i] + diameter / 2 > height)
    {
      speed[i] *= -1;
    }
    ellipse(xCoor[i], yCoor[i], diameter, diameter);
  }
}

void generateUnits()
{
  for(int i = 0; i < numberOfBalls; i++)
  {
    xCoor[i] = random((0 + diameter/2), width);
    yCoor[i] = random((0 + diameter/2), height);
    speed[i] = random(0, 15);
  }
}
