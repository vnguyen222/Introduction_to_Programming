/*************************************************************/
// Lab 9, PAINT PROGRAM
// Vincent Nguyen


// GLOBAL VARIABLES
int colorSelected, penColor, penSizeSelected;
int backgroundColor[] = new int[3];
int currentColorValue[][] = new int[4][3];
int penSizes[] = new int[4];
boolean backgroundMode, eraserMode;

float penButtonXAlign[] = new float[3]; 
float penButtonYAlign;
float penButtonWidth[] = new float[3];
float penButtonHeight[] = new float[3];

float colorSelectionXAlign[] = new float[4]; 
float colorSelectionYAlign, colorSelectionWidth, colorSelectionHeight;

final int RED = 0;
final int GREEN = 1;
final int BLUE = 2;
final int PURPLE = 3;

final int SMALL = 0;
final int MEDIUM = 1;
final int BIG = 2;

// SETUP FUNCTION
void setup()
{
  size(1000, 1000);
  background(255);
  frameRate(144);
  
  // Variable Initialization
  backgroundMode = false;
  eraserMode = false;
  
  // Background Color Key
  // 0 = Red (Default)
  // 1 = Green
  // 2 = Blue
  // 3 = Purple
  colorSelected = 0;
  
  // Color Code Initialization
  // Red RGB Codes 
  currentColorValue[0][0] = 237; 
  currentColorValue[0][1] = 41;
  currentColorValue[0][2] = 57;
  // Green RGB Codes 
  currentColorValue[1][0] = 84;
  currentColorValue[1][1] = 185;
  currentColorValue[1][2] = 72;
  // Blue RGB Codes 
  currentColorValue[2][0] = 44;
  currentColorValue[2][1] = 81;
  currentColorValue[2][2] = 255;
  // Purple RGB Codes 
  currentColorValue[3][0] = 174; 
  currentColorValue[3][1] = 48;
  currentColorValue[3][2] = 236;
  
  backgroundColor[0] = 255;
  backgroundColor[1] = 255;
  backgroundColor[2] = 255;
  
  // Pen Size Key
  // 0 = 25 (Default)
  // 1 = 50
  // 2 = 100
  penSizeSelected = 0;
  penSizes[0] = 20;
  penSizes[1] = 45;
  penSizes[2] = 90;
  
  // Pen UI Units
  penButtonXAlign[0] = (width * 0.265);
  penButtonXAlign[1] = (width * 0.33);
  penButtonXAlign[2] = (width * 0.425);
  penButtonYAlign = (height * 0.922);
  
  penButtonWidth[0] = (width * 0.02);
  penButtonHeight[0] = (height * 0.02);
  penButtonWidth[1] = (width * 0.045);
  penButtonHeight[1] = (height * 0.045);
  penButtonWidth[2] = (width * 0.09);
  penButtonHeight[2] = (height * 0.09);
  
  // Color Selection UI Units
  colorSelectionXAlign[0] = (width * 0.25);
  colorSelectionXAlign[1] = (width * 0.435);
  colorSelectionXAlign[2] = (width * 0.62);
  colorSelectionXAlign[3] = (width * 0.805);
  colorSelectionYAlign = (height * 0.78);
  colorSelectionWidth = (width * 0.17);
  colorSelectionHeight = (height * 0.06);
}



// MAIN DRAW FUNCTION
void draw()
{  
  // Draw UI Elements
  drawUI();
 

  // Color Selection Boxes
  drawColorBoxes();
  
  
  // Pen Size Selection
  drawPenCircles();
  
  
  // If mouse is pressed, then draw a line with the correct color
  if(mousePressed)
  {
    strokeWeight(penSizes[penSizeSelected]);
  
    // Eraser Mode
    if(eraserMode == true)
    {
      stroke(backgroundColor[0], backgroundColor[1], backgroundColor[2]);
    }
    else
    {
      stroke(currentColorValue[colorSelected][0], currentColorValue[colorSelected][1], currentColorValue[colorSelected][2]);
    }
  
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  
  // Toggle Background Mode On/Off
  if(backgroundMode == true)
  {
    fill(255, 0, 0, 255);
  }
  else if(backgroundMode == false)
  {
    fill(255, 0, 0, 0);
  }
  textSize(30);
  text("BACKGROUND MODE", 650, 910);
  
  
  // Toggle Eraser Mode On/Off
  if(eraserMode == true)
  {
    fill(255, 0, 0, 255);
  }
  else if(eraserMode == false)
  {
    fill(255, 0, 0, 0);
  }
  textSize(30);
  text("ERASER MODE", 650, 960);
}



// Mouse Pressed Event Handler
// Tracking Mouse Position to Determine Whether A Color or Pen Size Is Selected
void mousePressed()
{
  // Color Square Bounding Box
  // If The Mouse Is Clicked In The Red Box, Set The Color To Red
  if(((mouseX >= colorSelectionXAlign[0]) && (mouseX <= (width * 0.42))) && ((mouseY >= colorSelectionYAlign) && mouseY <= (height * 0.840)))
  {
    colorSelected = RED;
  }
  // If The Mouse Is Clicked In The Green Box, Set The Color To Green
  if(((mouseX >= colorSelectionXAlign[1]) && (mouseX <= (width * 0.605))) && ((mouseY >= colorSelectionYAlign) && mouseY <= (height * 0.840)))
  {
    colorSelected = GREEN;
  }
  // If The Mouse Is Clicked In The Blue Box, Set The Color To Blue
  if(((mouseX >= colorSelectionXAlign[2]) && (mouseX <= (width * 0.79))) && ((mouseY >= colorSelectionYAlign) && mouseY <= (height * 0.840)))
  {
    colorSelected = BLUE;
  }
  // If The Mouse Is Clicked In The Purple Box, Set The Color To Purple
  if(((mouseX >= colorSelectionXAlign[3]) && (mouseX <= (width * 0.975))) && ((mouseY >= colorSelectionYAlign) && mouseY <= (height * 0.840)))
  {
    colorSelected = PURPLE;
  }
  
  
  // Pen Size Bounding Box
  // If The Mouse In Clicked The Small Circle, Set The Pen Size To Small
  if(sqrt(sq(mouseX - penButtonXAlign[0]) + sq(mouseY - penButtonYAlign)) < (penButtonWidth[0]/2))
  {
    penSizeSelected = SMALL;
  }
  // If The Mouse In Clicked The Medium Circle, Set The Pen Size To Medium
  if(sqrt(sq(mouseX - penButtonXAlign[1]) + sq(mouseY - penButtonYAlign)) < (penButtonWidth[1]/2))
  {
    penSizeSelected = MEDIUM;
  }
  // If The Mouse In Clicked The Big Circle, Set The Pen Size To Big
  if(sqrt(sq(mouseX - penButtonXAlign[2]) + sq(mouseY - penButtonYAlign)) < (penButtonWidth[2]/2))
  {
    penSizeSelected = BIG;
  }
  
  
  // Background Mode
  // When Background Mode Is On, Reassign The Background Color To The Selected Color
  if(backgroundMode == true)
  {
    background(currentColorValue[colorSelected][0], currentColorValue[colorSelected][1], currentColorValue[colorSelected][2]);
    backgroundColor[0] = currentColorValue[colorSelected][0];
    backgroundColor[1] = currentColorValue[colorSelected][1];
    backgroundColor[2] = currentColorValue[colorSelected][2];
  }
}

void keyPressed()
{
  // Toggle Background Mode
  if(key == 'b' || key == 'B')
  {
    backgroundMode = !backgroundMode;
  }
  
  
  // Toggle Eraser Mode
  if(key == 'e' || key == 'E')
  {
    eraserMode = !eraserMode;
  }
  
  
  // Initiate Clear Canvas
  if(key == ' ' || key == 'C')
  {
    clearCanvas();
  }
  
  
  // Initiate Pen Size Cycle
  if(key == '1')
  {
    penSizeSelected = 0;
  }
  if(key == '2')
  {
    penSizeSelected = 1;
  }
  if(key == '3')
  {
    penSizeSelected = 2;
  }
}



// DRAW UI
void drawUI()
{
  // Draw Black Window Border
  fill(0, 0, 0, 0);
  strokeWeight(30);
  stroke(0);
  rect(0, 0, width, height);
  
  
  // Draw Bottom Black Div
  stroke(0);
  fill(0);  
  rect(0, (height/4) * 3, width, 999);
  
  
  fill(255);
  textSize((height * 0.045));
  // "Colors" Text
  text("COLORS", (width * 0.04), (width * 0.825));
  textSize((height * 0.043));
  // "Pen Size" Text
  text("PEN SIZE", (width * 0.04), (width * 0.94));
}


// DRAW COLOR SELECTION BOXES
void drawColorBoxes()
{
  strokeWeight(5);
  rectMode(CORNER);
  if(colorSelected == 0)
  {
    fill(currentColorValue[0][0], currentColorValue[0][1], currentColorValue[0][2]);
    stroke(255);
    rect(colorSelectionXAlign[0], colorSelectionYAlign, colorSelectionWidth, colorSelectionHeight); // Red Box (Selected)
  }
  else
  {
    fill(currentColorValue[0][0], currentColorValue[0][1], currentColorValue[0][2]);
    stroke(231, 105, 115);
    rect(colorSelectionXAlign[0], colorSelectionYAlign, colorSelectionWidth, colorSelectionHeight); // Red Box (Non-Selected) 
  }
  if(colorSelected == 1)
  {
    fill(currentColorValue[1][0], currentColorValue[1][1], currentColorValue[1][2]);
    stroke(255);
    rect(colorSelectionXAlign[1], colorSelectionYAlign, colorSelectionWidth, colorSelectionHeight); // Green Box (Selected)
  }
  else
  {
    fill(currentColorValue[1][0], currentColorValue[1][1], currentColorValue[1][2]);
    stroke(129, 202, 120);
    rect(colorSelectionXAlign[1], colorSelectionYAlign, colorSelectionWidth, colorSelectionHeight); // Green Box (Non-Selected) 
  }
  if(colorSelected == 2)
  {
    fill(currentColorValue[2][0], currentColorValue[2][1], currentColorValue[2][2]);
    stroke(255);
    rect(colorSelectionXAlign[2], colorSelectionYAlign, colorSelectionWidth, colorSelectionHeight); // Blue Box (Selected)
  }
  else
  {
    fill(currentColorValue[2][0], currentColorValue[2][1], currentColorValue[2][2]);
    stroke(102, 129, 255);
    rect(colorSelectionXAlign[2], colorSelectionYAlign, colorSelectionWidth, colorSelectionHeight); // Blue Box (Non-Selected)    
  }
  if(colorSelected == 3)
  {
    fill(currentColorValue[3][0], currentColorValue[3][1], currentColorValue[3][2]);
    stroke(255);
    rect(colorSelectionXAlign[3], colorSelectionYAlign, colorSelectionWidth, colorSelectionHeight); // Purple Box (Selected)
  }
  else
  {
    fill(currentColorValue[3][0], currentColorValue[3][1], currentColorValue[3][2]);
    stroke(191, 100, 236);
    rect(colorSelectionXAlign[3], colorSelectionYAlign, colorSelectionWidth, colorSelectionHeight); // Purple Box (Non-Selected) 
  }
}



// DRAW PEN SIZE SELECTION CIRCLES
void drawPenCircles()
{  
  strokeWeight(3);
  fill(currentColorValue[colorSelected][0], currentColorValue[colorSelected][1], currentColorValue[colorSelected][2]);
  ellipseMode(CENTER);
  
  // Small Pen Size
  if(penSizeSelected == 0)
  {
    stroke(255);
    ellipse(penButtonXAlign[0], penButtonYAlign, penButtonWidth[0], penButtonHeight[0]);
  }
  else
  {
    stroke(0);
    ellipse(penButtonXAlign[0], penButtonYAlign, penButtonWidth[0], penButtonHeight[0]);
  }
  // Medium Pen Size
  if(penSizeSelected == 1)
  {
    stroke(255);
    ellipse(penButtonXAlign[1], penButtonYAlign, penButtonWidth[1], penButtonHeight[1]);
  }
  else
  {
    stroke(0);
    ellipse(penButtonXAlign[1], penButtonYAlign, penButtonWidth[1], penButtonHeight[1]);
  }
  // Large Pen Size
  if(penSizeSelected == 2)
  {
    stroke(255);
    ellipse(penButtonXAlign[2], penButtonYAlign, penButtonWidth[2], penButtonHeight[2]);
  }
  else
  {
    stroke(0);
    ellipse(penButtonXAlign[2], penButtonYAlign, penButtonWidth[2], penButtonHeight[2]);
  }
}


// CLEAR CANVAS FUNCTION
void clearCanvas()
{
  background(255);
  backgroundColor[0] = 255;
  backgroundColor[1] = 255;
  backgroundColor[2] = 255;
}
