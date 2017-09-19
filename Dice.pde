void setup()
{
  size(520, 580);
  noLoop();
}

String numTotal = "Total: ";
String numRoll = "Number of Rolls: ";
int total = 0;
int rollNum = 1;

void draw()
{
  background(100, 190, 203);
  //int numDie = 0;
  for (int y=10; y<=500; y+=50)
  {
    for (int x=10; x<=500; x+=50)
    {
      Die one = new Die(x, y);
      one.show();
      one.roll();
    }
  }
  fill(255);
  textSize(30);
  text(numTotal + total, 20, 550);
  text(numRoll + rollNum, 200, 550);
}
void mousePressed()
{
  total = 0;
  rollNum ++;
  redraw();
}
class Die //models one single dice cube
{
  int numDie, myX, myY;//variable declarations here
  Die(int x, int y) //constructor
  {
    numDie = (int)(Math.random()*6)+1;//variable initializations here
    myX = x;
    myY = y;
  }
  void roll()
  {
    total = total + numDie;
  }
  void show()
  {
    fill(255);
    stroke(3);
    rect(myX, myY, 50, 50, 20);
    fill(0);
    if (numDie == 1)
    {
      ellipse(myX+25, myY+25, 7, 7);
    } else if (numDie == 2)
    {
      ellipse(myX+15, myY+15, 7, 7);
      ellipse(myX+35, myY+40, 7, 7);
    } else if (numDie==3)
    {
      ellipse(myX+35, myY+15, 7, 7);
      ellipse(myX+25, myY+25, 7, 7);
      ellipse(myX+15, myY+35, 7, 7);
    } else if (numDie==4)
    {
      ellipse(myX+15, myY+35, 7, 7);
      ellipse(myX+35, myY+35, 7, 7);
      ellipse(myX+15, myY+15, 7, 7);
      ellipse(myX+35, myY+15, 7, 7);
    } else if (numDie==5)
    {
      ellipse(myX+15, myY+35, 7, 7);
      ellipse(myX+35, myY+35, 7, 7);
      ellipse(myX+15, myY+15, 7, 7);
      ellipse(myX+35, myY+15, 7, 7);
      ellipse(myX+25, myY+25, 7, 7);
    } else if (numDie==6)
    {
      ellipse(myX+15, myY+35, 7, 7);
      ellipse(myX+35, myY+35, 7, 7);
      ellipse(myX+15, myY+15, 7, 7);
      ellipse(myX+35, myY+15, 7, 7);
      ellipse(myX+15, myY+25, 7, 7);
      ellipse(myX+35, myY+25, 7, 7);
    }
  }
}