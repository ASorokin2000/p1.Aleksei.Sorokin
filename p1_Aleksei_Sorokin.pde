
boolean emOver = false;
boolean helpOver = false;
boolean openOver = false;
boolean closeOver = false;
boolean firstOver = false;
boolean secondOver = false;
boolean thirdOver = false;
boolean fourthOver = false;
PFont f; 
int floor = 1;
int wid = 100;
int len = 1000;


void setup() {
f = createFont("Arial",16,true); 
textFont(f,55);
size(400, 1000);
background(255);
fill (0, 0, 0);
rect (30, 30, 340, len-60);
stroke (125);
line (30, len-180, 370, len-180);
fill (#645858);
rect ( 60, len-160, 100, 100);

fill(0); 
textFont(f,18);
text("Emergency", 65, len-110);
fill (#645858);
rect ( 240, len-160, 100, 100);
fill(0); 
text("HELP", 265, len-120);
text("CALL", 265, len-90);
fill (#645858);
rect ( 60, len-300, 100, 100);
fill (#645858);
rect ( 240, len-300, 100, 100);
fill (0, 0, 0);
rect (105, len-280, 10, 60);
triangle(65, len-250, 90, len-280, 90, len - 220);
triangle(155, len-250, 130, len-280, 130, len - 220);
rect (285, len-280, 10, 60);
triangle(280, len-250, 255, len-280, 255, len - 220);
triangle(300, len-250, 325, len-280, 325, len - 220);
fill (#645858);
rect ( 150, len-430, 100, 100);
textFont(f,55);
fill(0);                         
text("1",185, 640);
fill (#645858);
rect ( 150, len-560, 100, 100);
fill(0);                         
text("2",185, 510);
fill (#645858);
rect ( 150, len-690, 100, 100);
fill(0);                         
text("3",185, 380);
fill (#645858);
rect ( 150, len-820, 100, 100);
fill(0);                         
text("4",185, 250);
fill (#645858);
rect (50, 40, 300, 100);                 
fill(0); 
textFont(f,40);
text("Floor: " + str(floor),120,100);
}

void draw() {
emOver = false;
helpOver = false;
openOver = false;
closeOver = false;
firstOver = false;
secondOver = false;
thirdOver = false;
fourthOver = false;
delay(600);
fill (0, 0, 0);
rect (30, 30, 340, len-60);
stroke (125);
line (30, len-180, 370, len-180);
fill (#645858);
rect ( 60, len-160, 100, 100);

fill(0); 
textFont(f,18);
text("Emergency", 65, len-110);
fill (#645858);
rect ( 240, len-160, 100, 100);
fill(0); 
text("HELP", 265, len-120);
text("CALL", 265, len-90);
fill (#645858);
rect ( 60, len-300, 100, 100);
fill (#645858);
rect ( 240, len-300, 100, 100);
fill (0, 0, 0);
rect (105, len-280, 10, 60);
triangle(65, len-250, 90, len-280, 90, len - 220);
triangle(155, len-250, 130, len-280, 130, len - 220);
rect (285, len-280, 10, 60);
triangle(280, len-250, 255, len-280, 255, len - 220);
triangle(300, len-250, 325, len-280, 325, len - 220);
fill (#645858);
rect ( 150, len-430, 100, 100);
textFont(f,55);
fill(0);                         
text("1",185, 640);
fill (#645858);
rect ( 150, len-560, 100, 100);
fill(0);                         
text("2",185, 510);
fill (#645858);
rect ( 150, len-690, 100, 100);
fill(0);                         
text("3",185, 380);
fill (#645858);
rect ( 150, len-820, 100, 100);
fill(0);                         
text("4",185, 250);
fill (#645858);
rect (50, 40, 300, 100);                 
fill(0); 
textFont(f,40);
text("Floor: " + str(floor),120,100);
  
}

void mousePressed() {
  update(mouseX, mouseY);
  if (emOver) {
    fill (#E52A2A);
  rect (50, 40, 300, 100);
    fill(0);                         // STEP 4 Specify font color
    text("Emergency",80,110);
    } 
    else if (helpOver)
    {
    fill (#E52A2A);
    rect (50, 40, 300, 100);
    fill(0);                         // STEP 4 Specify font color
    text("Call",160,110);
    } 
    else if (openOver)
    {
      fill (#E52A2A);
      rect (310, 65, 5, 40);
      triangle(280, 85, 305, 65, 305, 105);
      triangle(345, 85, 320, 65, 320, 105);
    }
    else if (closeOver)
    {
      fill (#E52A2A);
      rect (310, 65, 5, 40);
      triangle(305, 85, 280, 65, 280, 105);
      triangle(320, 85, 345, 65, 345, 105);
    }
    else if (firstOver)
    {
      if (floor > 1)
      {
      fill (#E52A2A);
      rect ( 150, len-430, 100, 100);
      textFont(f,55);
      fill(0);                         
      text("1",185, 640);
      fill(0);
      triangle(300, 110, 270, 60, 330, 60);
      floor = 1;
    }
    }
    else if (secondOver)
    {
      if (floor != 2)
      {
      fill (#E52A2A);
      rect ( 150, len-560, 100, 100);
      textFont(f,55);
      fill(0);                         
      text("2",185, 510);
      fill(0);
      if ( floor > 2)
      triangle(300, 110, 270, 60, 330, 60);
      else if (floor < 2)
      triangle(300, 60, 270, 110, 330, 110);
      floor = 2; 
    }
    }
    
    else if (thirdOver)
    {
      if (floor != 3)
      {
      fill (#E52A2A);
      rect ( 150, len-690, 100, 100);
      textFont(f,55);
      fill(0);                         
      text("3",185, 380);
      fill(0);
      if ( floor > 3)
      triangle(300, 110, 270, 60, 330, 60);
      else if (floor < 3)
      triangle(300, 60, 270, 110, 330, 110);
      floor = 3; 
    }
    }
    
    else if (fourthOver)
    {
      if (floor != 4)
      {
      fill (#E52A2A);
      rect ( 150, len-820, 100, 100);
      textFont(f,55);
      fill(0);                         
      text("4",185, 250);
      fill(0);
      if ( floor > 4)
      triangle(300, 110, 270, 60, 330, 60);
      else if (floor < 4)
      triangle(300, 60, 270, 110, 330, 110);
      floor = 4; 
    }
    }
    
}


void update(int x, int y) {
  if ( overRect(60, len-160)) 
    emOver = true;
    if ( overRect(240, len-160)) 
    helpOver = true;
    if ( overRect(60, len-300)) 
    openOver = true;
    if ( overRect(240, len-300)) 
    closeOver = true;
    if ( overRect(150, len-430)) 
    firstOver = true;
    if ( overRect(150, len-560)) 
    secondOver = true;
    if ( overRect(150, len-690)) 
    thirdOver = true;
    if ( overRect(150, len-820)) 
    fourthOver = true;
  
}

boolean overRect(int x, int y)  {
  if (mouseX >= x && mouseX <= x+wid && 
      mouseY >= y && mouseY <= y+wid) {
    return true;
  } else {
    return false;
  }
}
