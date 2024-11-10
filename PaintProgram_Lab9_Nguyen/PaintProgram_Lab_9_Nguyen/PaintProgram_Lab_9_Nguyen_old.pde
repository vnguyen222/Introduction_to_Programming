/*************************************************************/
// Lab 9, PAINT PROGRAM
// Vincent Nguyen


// GLOBAL VARIABLES
int colorSelected, penColor, penSizeSelected;
int backgroundColor[] = new int[3];
int currentColorValue[][] = new int[4][3];
int penSizes[] = new int[4];
boolean backgroundMode, eraserMode;



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
  
  
  // Calling Interactions & Mouse Drawing
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
  if(keyPressed){}
  
  
  // Toggle Background Mode On/Off
  if(backgroundMode == true)
  {
    //println("Background Mode On");
    fill(255, 0, 0, 255);
  }
  else if(backgroundMode == false)
  {
    //println("Background Mode Off");
    fill(255, 0, 0, 0);
  }
  textSize(30);
  text("BACKGROUND MODE", 650, 910);
  
  
  // Toggle Eraser Mode On/Off
  if(eraserMode == true)
  {
    //println("Eraser Mode Mode On");
    fill(255, 0, 0, 255);
  }
  else if(eraserMode == false)
  {
    //println("Eraser Mode Mode Off");
    fill(255, 0, 0, 0);
  }
  textSize(30);
  text("ERASER MODE", 650, 960);
}



// INTERACTIONS FUNCTIONS
void mousePressed()
{
  // Color Square Bounding Box
  if(((mouseX >= (width * 0.25)) && (mouseX <= (width * 0.42))) && ((mouseY >= (height * 0.78)) && mouseY <= (height * 0.840)))
  {
    // Red
    colorSelected = 0;
  }
  if(((mouseX >= (width * 0.435)) && (mouseX <= (width * 0.605))) && ((mouseY >= (height * 0.78)) && mouseY <= (height * 0.840)))
  {
    // Green
    colorSelected = 1;
  }
  if(((mouseX >= (width * 0.62)) && (mouseX <= (width * 0.79))) && ((mouseY >= (height * 0.78)) && mouseY <= (height * 0.840)))
  {
    // Blue
    colorSelected = 2;
  }
  if(((mouseX >= (width * 0.805)) && (mouseX <= (width * 0.975))) && ((mouseY >= (height * 0.78)) && mouseY <= (height * 0.840)))
  {
    // Purple
    colorSelected = 3;
  }
  
  
  // Pen Size Bounding Box
  if(((mouseX >= (width * 0.265)) && (mouseX <= (width * 0.285))) && ((mouseY >= (height * 0.875)) && (mouseY <= (height * 0.895))))
  {
    // Size 1
    println("Size 0");
    penSizeSelected = 0;
  }
  if(((mouseX >= (width * 0.33)) && (mouseX <= (width * 0.375))) && ((mouseY >= (height * 0.875)) && (mouseY <= (height * 0.92))))
  {
    // Size 2
    println("Size 1");
    penSizeSelected = 1;
  }
  if(((mouseX >= (width * 0.425)) && (mouseX <= (width * 0.525))) && ((mouseY >= (height * 0.875)) && (mouseY <= (height * 0.965))))
  {
    // Size 3
    println("Size 2");
    penSizeSelected = 2;
  }
  
  
  // Background Mode
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
  // Initiate Background Mode
  if(key == 'b' || key == 'B')
  {
    backgroundMode = !backgroundMode;
  }
  
  
  // Initiate Eraser Mode
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
  // Border
  fill(0, 0, 0, 0);
  strokeWeight(30);
  stroke(0);
  rect(0, 0, width, height);
  
  
  // Bottom Div
  stroke(0);
  fill(0);  
  rect(0, (height/4) * 3, width, 999);
  
  
  // Labels
  fill(255);
  textSize((height * 0.045));
  text("COLORS", (width * 0.04), (width * 0.825));
  textSize((height * 0.043));
  text("PEN SIZE", (width * 0.04), (width * 0.94));
}


// DRAW COLOR SELECTION BOXES
void drawColorBoxes()
{
  strokeWeight(5);
  rectMode(CORNER);
  if(colorSelected == 0)
  {
    fill(237, 41, 57);
    stroke(255);
    rect((width * 0.25), (height * 0.78), (width * 0.17), (height * 0.06)); // Red Box (Selected)
  }
  else
  {
    fill(237, 41, 57);
    stroke(231, 105, 115);
    rect((width * 0.25), (height * 0.78), (width * 0.17), (height * 0.06)); // Red Box (Non-Selected) 
  }
  if(colorSelected == 1)
  {
    fill(84, 185, 72);
    stroke(255);
    rect((width * 0.435), (height * 0.78), (width * 0.17), (height * 0.06)); // Green Box (Selected)
  }
  else
  {
    fill(84, 185, 72);
    stroke(129, 202, 120);
    rect((width * 0.435), (height * 0.78), (width * 0.17), (height * 0.06)); // Green Box (Non-Selected) 
  }
  if(colorSelected == 2)
  {
    fill(44, 81, 255);
    stroke(255);
    rect((width * 0.62), (height * 0.78), (width * 0.17), (height * 0.06)); // Blue Box (Selected)
  }
  else
  {
    fill(44, 81, 255);
    stroke(102, 129, 255);
    rect((width * 0.62), (height * 0.78), (width * 0.17), (height * 0.06)); // Blue Box (Non-Selected)    
  }
  if(colorSelected == 3)
  {
    fill(174, 48, 236);
    stroke(255);
    rect((width * 0.805), (height * 0.78), (width * 0.17), (height * 0.06)); // Purple Box (Selected)
  }
  else
  {
    fill(174, 48, 236);
    stroke(191, 100, 236);
    rect((width * 0.805), (height * 0.78), (width * 0.17), (height * 0.06)); // Purple Box (Non-Selected) 
  }
}



// DRAW PEN SIZE SELECTION CIRCLES
void drawPenCircles()
{
  strokeWeight(3);
  fill(currentColorValue[colorSelected][0], currentColorValue[colorSelected][1], currentColorValue[colorSelected][2]);
  ellipseMode(CORNER);
  
  if(penSizeSelected == 0)
  {
    stroke(255);
    ellipse((width * 0.265), (height * 0.875), (width * 0.02), (height * 0.02));
  }
  else
  {
    stroke(0);
    ellipse((width * 0.265), (height * 0.875), (width * 0.02), (height * 0.02));
  }
  if(penSizeSelected == 1)
  {
    stroke(255);
    ellipse((width * 0.33), (height * 0.875), (width * 0.045), (height * 0.045));
  }
  else
  {
    stroke(0);
    ellipse((width * 0.33), (height * 0.875), (width * 0.045), (height * 0.045));
  }
  if(penSizeSelected == 2)
  {
    stroke(255);
    ellipse((width * 0.425), (height * 0.875), (width * 0.09), (height * 0.09));
  }
  else
  {
    stroke(0);
    ellipse((width * 0.425), (height * 0.875), (width * 0.09), (height * 0.09));
  }


}


// CLEAR CANVAS FUNCTION
void clearCanvas()
{
  background(255);  
}
