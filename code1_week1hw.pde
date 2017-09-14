//pseudocode:
// create a 600 x 600 canvas
// draw 11 horizontal lines evenly spaced down the canvas
// draw 7 vertical lines down the center spaced .25 in. apart
// make a triangular shape taking up approx. 2/3 of the page, 
////pointing downward from the top
// make a triangular shape taking up approx. 2/3 of the page, 
////pointing upward from the bottom
// fill both triangles with vertical lines, making sure the top one is shifted 
////slightly to the right to prevent overlap
// erase all lines of the original triangles so that only the v. lines remain
// between each of the horizontal lines create a second h. line in the center, 
////stopping at the trianlges
// create a diagonal line every 4 h. lines pointing in toward the triangle 
////from the outer edge to the distance of the outermost line of the triangle

void setup (){
  surface.setSize (600, 600);
  background (240, 70, 255);  
  stroke (255); 
}

void draw() {
 line (0, 200, 850, 200);
 line (0, 250, 850, 250);
 line (0 ,300, 850, 300);
 line (0, 350, 850, 350);
 line (0, 400, 850, 400);
 line (0, 450, 850, 450);
 line (0, 500, 850, 500);
 line (0, 550, 850, 550);
 line (0, 600, 850, 600);
 line (0, 650, 850, 650);
 line (0, 100, 850, 100);
 line (0, 150, 850, 150);
 line (0, 50, 850, 50);
 // draw horizontal lines *8
 line (500, 550, 500, 1000);
 line (500, 0, 500, 50);
 line (300, 150, 300, 1000);
 line (100, 550, 100, 1000);
 line (100, 0, 100, 50);
 // draw vertical lines
line (0, 200, 100, 400);
line (0, 300, 100, 500);
line (0, 400, 100, 600);
line (0, 500, 100, 700);
line (0, 100, 100, 300);
line (0, 0, 100, 200);
line (0, -100, 100, 100);
// draw (lines), lines = diagonalInLeftBoxes *7
line (500, 100, 600, -100);
line (500, 200, 600, 0);
line (500, 300, 600, 100);
line (500, 400, 600, 200);
line (500, 500, 600, 300);
line (500, 600, 600, 400);
line (500, 700, 600, 500);
// draw (lines), lines = diagonalInRightBoxes *7
line (475, 500, 475, 1000);
line (450, 450, 450, 1000);
line (425, 400, 425, 1000);
line (400, 350, 400, 1000);
line (375, 300, 375, 1000);
line (350, 250, 350, 1000);
line (325, 200, 325, 1000);
// draw vertical lines In Triangle (rightHalf) *7
line (275, 200, 275, 1000);
line (250, 250, 250, 1000);
line (225, 300, 225, 1000);
line (200, 350, 200, 1000);
line (175, 400, 175, 1000);
line (150, 450, 150, 1000);
line (125, 500, 125, 1000);
// draw vertical lines In Trignale (leftHalf) *7
line (480, 0, 480, 100);
line (455, 0, 455, 150);
line (430, 0, 430, 200);
line (405, 0, 405, 250);
line (380, 0, 380, 300);
line (355, 0, 355, 350);
line (330, 0, 330, 400);
line (305, 0, 305, 450);
// draw lines In Top Tri (rightHalf) *7
line (280, 0, 280, 400);
line (255, 0, 255, 350);
line (230, 0, 230, 300);
line (205, 0, 205, 250);
line (180, 0, 180, 200);
line (155, 0, 155, 150);
line (130, 0, 130, 100);
// draw lines In Top Tri (leftHalf) *7
line (0, 575, 100, 575);
line (0, 525, 125, 525);
line (0, 475, 150, 475);
line (0, 425, 175, 425);
line (0, 375, 200, 375);
line (0, 325, 225, 325);
line (0, 275, 230, 275);
line (0, 225, 205, 225);
line (0, 175, 180, 175);
line (0, 125, 155, 125);
line (0, 75, 130, 75);
line (0, 25, 100, 25);
// draw horizontal Lines To Tri Left *12
line (500, 25, 1000, 25);
line (480, 75, 1000, 75);
line (455, 125, 1000, 125);
line (430, 175, 1000, 175);
line (405, 225, 1000, 225);
line (380, 275, 1000, 275);
line (375, 325, 1000, 325);
line (400, 375, 1000, 375);
line (425, 425, 1000, 425);
line (450, 475, 1000, 475);
line (475, 525, 1000, 525);
line (500, 575, 1000, 575);
// draw vertical Lines To Tri Right *12
}