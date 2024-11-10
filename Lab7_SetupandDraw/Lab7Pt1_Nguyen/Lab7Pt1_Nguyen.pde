/**************************************************************/

// Lab 7, Part 1
// Vincent Nguyen



// Setup
void setup()
{
  size(1000, 1000);
  background(255);
}

// Drawing Loop
void draw()
{
  stroke(random(0, 255), random(0, 255), random(0, 255));
  strokeWeight(3);
  line(width/2, height, random(0, width), random(0, height));
}


/**************************************************************/
