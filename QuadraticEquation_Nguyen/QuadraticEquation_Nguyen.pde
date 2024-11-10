/*****************************************************************/
// Quadratic Formula
// BY: Vincent Nguyen


// DATA CREATION

// Input Data
float a = -3;
float b = 18;
float c = -27;
// Calculation Data
boolean multipleRoots = true;
float rootOne = 0;
float rootTwo = 0;


// CALCULATIONS

if((sqrt((sq(b))+((-4)*(a * c)))) >= 0)
{
// First Root
multipleRoots = true;
rootOne = (-b + sqrt((sq(b))+((-4)*(a * c)))) / (2 * a);
// Second Root
multipleRoots = true;
rootTwo = (-b - sqrt((sq(b))+((-4)*(a * c)))) / (2 * a);
} 
else
{
  multipleRoots = false;
}


// OUTPUT

// No Root
if(multipleRoots == false)
{
  println("NO ROOTS.");
}
// One Root
if(rootOne == rootTwo && (rootOne != 0 && rootTwo != 0) && multipleRoots == true)
{
  println("ONE ROOTS.");
  println("Root: " + rootOne);
}
// Two Roots
if(rootOne > 0 && rootTwo > 0 && rootOne != rootTwo && multipleRoots == true)
{
  println("TWO ROOTS.");
  println("Root 1: " + rootOne);
  println("Root 2: " + rootTwo);
}
