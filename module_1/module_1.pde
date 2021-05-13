

// the function that gets called at the very first frame
void setup()
{
  size(1280, 720, P3D); // set window size to 1280 x 720
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0); 

}

// the function that gets called every frame
void draw()
{
  background(0); // sets the background color of the whole window
  
  //circle(0, 0, 15); // draws a circle at x,y with thickness
  
  //strokeWeight(2); // changes the thickness of the line below it
  //color white = color(255, 255, 255); // declare a color variable
  //fill(white);  // fills it with the color selected
  //stroke(white); // all the strokes will be the color seelcted
  //line(-75, -75, 75, 75); //draws a line x1, y1, x2, y2
  
  drawCartesianPlane();
  drawLinearFunction();
  drawQuadraticFunction();
  drawCircle();
}

void drawCartesianPlane()
{
  strokeWeight(1);
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  line(300, 0, -300, 0);
  line(0, -300, 0, 300);

  for (int i = -300; i <= 300; i += 10)
  {
    line(i, -2, i, 2);
    line(-2, i, 2, i);
  } 
}

void drawLinearFunction()
{
  /*
     f(x) = x + 2
     Let x be 4, then y = 6    (4,6);
     Let x be -5, then y = -3   (-5, -3);
  */
  
  color green = color(255, 0, 0);
  fill(green);
  noStroke();
  
  for (int x = -200; x <= 200; x++)
  {
    circle(x, x + 2, 5);
  }
}

void drawQuadraticFunction()
{
     /*
     * f(x) = x^2 + 2x - 5;
     * Let x be 2, then y = 3
     * Let x be -1, then y = -6
     */  
     
  color blue = color (0, 255, 0);
  fill(blue);
  stroke(blue);
  noStroke();
  for (float x = -300; x <= 300; x += 0.1f)
  {
    circle(x * 10, (float)Math.pow(x, 2) + (2 * x) - 5, 5);
  }
}

void drawCircle()
{
  color red = color (0, 0, 255);
  fill (red);
  stroke (red);
  float radius = 50;
  
  for (int x = 0; x <= 360; x++)
  {
     circle((float)Math.cos(x) * radius, (float)Math.sin(x) * radius, 5); 
  }
}
