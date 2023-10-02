void setup()
{
  background(#F59797);
  size(700,800);
  noLoop();
}
void draw()
{
  background(#F59797);
  int x = 20;
  int y = 20;
  int total = 0;
  
  for(int i = 0; i< 5; i++){
   for(int z = 0; z < 5; z++){
      Die one = new Die(x,y);
      one.show();
      y = y+140;
      total = total + one.number;
     }
    x = x + 140;
    y =20;
  }
  textSize(30);
  text("Total : " + total, 260,750);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY, number;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    number = (int)(Math.random()*6)+1;
      if (number == 1){
      fill(0);
      ellipse(myX+50,myY+50,15,15);
      }
      if(number == 2){
      fill(0);
      ellipse(myX+25,myY+25,15,15);
      ellipse(myX+75,myY+75,15,15);
      }
      if(number == 3){
      fill(0);
      ellipse(myX+25,myY+25,15,15);
      ellipse(myX+50,myY+50,15,15);
      ellipse(myX+75,myY+75,15,15);
      }
      if(number == 4){
      fill(0);
      ellipse(myX+25,myY+25,15,15);
      ellipse(myX+75,myY+25,15,15);
      ellipse(myX+25,myY+75,15,15);
      ellipse(myX+75,myY+75,15,15);
      }
      if(number == 5){
      fill(0);
      ellipse(myX+25,myY+25,15,15);
      ellipse(myX+75,myY+25,15,15);
      ellipse(myX+50,myY+50,15,15);
      ellipse(myX+25,myY+75,15,15);
      ellipse(myX+75,myY+75,15,15);
      }
      if(number == 6){
      fill(0);
      ellipse(myX+25,myY+25,15,15);
      ellipse(myX+25,myY+50,15,15);
      ellipse(myX+75,myY+25,15,15);
      ellipse(myX+75,myY+50,15,15);
      ellipse(myX+25,myY+75,15,15);
      ellipse(myX+75,myY+75,15,15);
      }
  }
  void show()
  {
    fill(255);
    stroke(0);
    strokeWeight(4);
    rect(myX,myY,100,100,20);
    roll();
  }
}
