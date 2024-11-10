/************************************************************************/
// Lab 2 - CREATURE PROJECT
// Vincent Nguyen


// SIZE AND BACKGROUND COLOR INITIALIZATION
size(1000, 1000);
background(255);



// MAIN HEADSHAPE
fill(0);
strokeWeight(5);
ellipseMode(CENTER);
ellipse(500, 600, 500, 500);


// EARS
strokeWeight(0);
fill(0);
ellipseMode(CENTER);
ellipse(250, 330, 300, 320);
ellipse(750, 330, 300, 320);


// FOREGROUND FACE AREA
fill(254, 223, 179);
strokeWeight(0);
stroke(254, 223, 179);
ellipse(422, 525, 170, 265);
ellipse(575, 525, 170, 265);


// ***MOUTH***
fill(254, 223, 179);
strokeWeight(0);
stroke(254, 223, 179);
ellipseMode(CENTER);
arc(500, 675, 550, 425, 0, PI);

// Sides of Mouth
arc(325, 675, 200, 150, PI, PI*1.5);
arc(675, 675, 200, 150, PI*1.5, PI*2);

// Misc Covering
rect(310, 600, 375, 95);
rectMode(CENTER);
rect(500, 600, 100, 100);


// ***EYES***
strokeWeight(4);
stroke(0);
fill(255);
ellipseMode(CENTER);
ellipse(457, 525, 60, 140);
ellipse(543, 528, 60, 140);

fill(0);
ellipseMode(CENTER);
ellipse(457, 565, 30, 50);
ellipse(543, 565, 30, 50);


// ***SMILE***

// Open mouth
fill(0);
strokeWeight(0);
arc(500, 740, 250, 195, 0, PI);

fill(254, 223, 179);
strokeWeight(6);
arc(500, 680, 380, 200, 0, PI);

// Mouth Ends
fill(0, 0, 0, 0);
strokeWeight(6);
arc(345, 710, 150, 75, PI*1.16, PI*1.5);
arc(655, 710, 150, 75, PI*1.5, PI*1.83);

// Tongue
strokeWeight(0);
stroke(255,182,193);
fill(255,182,193);
ellipseMode(CENTER);
ellipse(500, 810, 125, 40);





// ***NOSE***
fill(254, 223, 179);
strokeWeight(5);
stroke(0);
arc(500, 610, 125, 50, PI*1.1, PI*1.9);

// Main nose
strokeWeight(0);
fill(0);
ellipseMode(CENTER);
ellipse(500, 640, 130, 85);
