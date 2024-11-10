/**********************************************************/
// Freeze Tag
// BY: Vincent Nguyen, Tristan Speer


// GLOBAL VARIABLES

// Change this number to change the number of rectangles present in the program 
int numberOfRectangles = 5;
float xCoor[] = new float[numberOfRectangles];
float yCoor[] = new float[numberOfRectangles];
int rectangleWidth[] = new int[numberOfRectangles];
int rectangleHeight[] = new int[numberOfRectangles];
int rectangleColor[][] = new int [numberOfRectangles][3];
int trajectoryX[] = new int[numberOfRectangles];
int trajectoryY[] = new int[numberOfRectangles];
boolean tagged[] = new boolean[numberOfRectangles];
boolean gameStart = true, gameComplete = false;

void setup()
{
  size(500, 500);
  frameRate(144);
  // Call the function to initialize values for all global variables
  generateValues();
}

void draw()
{
  // If boolean gameStart is true while boolean gameComplete is false. The start screen function will be called to display the start screen text.
  if(gameStart == true && gameComplete == false)
  {
    startScreen();
  }
  // If boolean gameStart and gameComplete are false, the game will draw the squares in the gameplay until game is complete
  if(gameComplete == false && gameStart == false)
  {
    drawSquares();
  }
  // If boolean gameComplete is true while gameStart is false. The end screen would display until user interaction is given
  if(gameComplete == true && gameStart == false)
  {
    endScreen();
  }
}

// Initialize values for all global variables. With values for each rectangle's position, size, trajectory, and whether it is tagged or not
void generateValues()
{
  for(int i = 0; i < numberOfRectangles; i++)
  {
    rectangleWidth[i] = (int)random(30, 60);
    rectangleHeight[i] = (int)random(30, 60);
    xCoor[i] = random(0, width - rectangleWidth[i]);
    yCoor[i] = random(0, height - rectangleHeight[i]);
    rectangleColor[i][0] = (int)random(255);
    rectangleColor[i][1] = (int)random(255);
    rectangleColor[i][2] = (int)random(255);
    trajectoryX[i] = (int)random(1, 3);
    trajectoryY[i] = (int)random(1, 3);
    tagged[i] = false;
  }
}

// Gameplay of moving squares and once clicked, would be tagged
void drawSquares()
{
  endGame();
  background(0);
  for(int i = 0; i < numberOfRectangles; i++)
  {
    strokeWeight(2);
    if(tagged[i] == true)
    {
      fill(255, 0, 0);
    }
    else
    {
      fill(rectangleColor[i][0], rectangleColor[i][1], rectangleColor[i][2]);
    }
    
    rectMode(CORNER);
    rect(xCoor[i], yCoor[i], rectangleWidth[i], rectangleHeight[i]);
    
    if(tagged[i] == false)
    {
    xCoor[i] += trajectoryX[i];
    yCoor[i] += trajectoryY[i];
    }
    if(xCoor[i] <= 0 || (xCoor[i] + rectangleWidth[i]) >= width)
    {
      trajectoryX[i] *= -1;
    }
    if(yCoor[i] <= 0 || (yCoor[i] + rectangleHeight[i]) >= height)
    {
      trajectoryY[i] *= -1;
    }
  }
  
  endGame();
}

// Function always executed when the function drawSquares is called
// Function determines whether all the rectangles are tagged and ends the game
void endGame()
{
  int numOfTagged = 0;
  for(int i = 0; i < numberOfRectangles; i++)
  {
    if(tagged[i] == true)
    {
      numOfTagged++;
    }
    
    if(numOfTagged == numberOfRectangles)
    {
      println("Game Complete");
      gameComplete = true;
    }
  }
}

// Called before the game begins
// Displays the start screen and instructions on how to play and get started
void startScreen()
{
  background(255);
  // "Freeze Tag" text
  fill(255, 0, 0);
  textSize(70);
  text("Freeze Tag", 70, 110);
  // Divider Bar
  fill(0);
  strokeWeight(30);
  line(0, 175, width, 175);
  
  fill(0);
  textSize(24);
  text("Click to freeze the rectangles!", 80, 250);
  text("Freeze them all to win!", 125, 275);
  
  fill(255, 0, 255);
  text("Press any key to start", 130, 400);
}

// When game is complete, the endScreen function is called which displays the "Game Over" text and prompts the user that the game is done
void endScreen()
{
  fill(255);
  textSize(40);
  textAlign(width/2, height/2);
  text("Game Over!", 150, width/2);
  text("YOU WIN!", 175, 300);
  fill(0, 255, 255);
  textSize(24);
  text("Press any key to restart", 130, 400);
}

// Mouse Interaction
void mousePressed()
{
  for(int i = 0; i < numberOfRectangles; i++)
  {
    if((mouseX >= xCoor[i] && mouseX <= (xCoor[i] + rectangleWidth[i])) && (mouseY >= yCoor[i] && mouseY <= (yCoor[i] + rectangleHeight[i])))
    {
      println("Clicked " + i);
      tagged[i] = !tagged[i];
    }
  }
}

// Key Interaction
void keyPressed()
{
  if(gameStart == true)
  {
    gameStart = !gameStart;
    gameComplete = false;
  }
  if(gameComplete == true)
  {
    gameComplete = !gameComplete;
    generateValues();
    gameStart = !gameStart;
  }
}
