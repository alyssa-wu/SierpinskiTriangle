public void setup()
{
  size(800,800);
}
public void draw()
{
  background(0);
  //fill(255,int((110/800) * mouseX + 72),0); 
  sierpinski(0,800,mouseX);
  //just a bunch of if statements for color
  if(mouseX <= 80) {
   fill(255, 72, 0); 
  } else if(mouseX <= 160)
  {
   fill(255, 84, 0); 
  } else if(mouseX <= 240)
  {
   fill(255, 96, 0);
  } else if(mouseX <= 320)
  {
   fill(255, 109, 0); 
  } else if(mouseX <= 400)
  {
   fill(255, 121, 0); 
  } else if(mouseX <= 480)
  {
   fill(255, 133, 0); 
  } else if(mouseX <= 560)
  {
   fill(255, 145, 0); 
  } else if(mouseX <= 640)
  {
   fill(255, 158, 0); 
  } else if(mouseX <= 720)
  {
   fill(255, 170, 0); 
  } else
  {
   fill(255, 182, 0); 
  }
  
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20)
  {
   triangle(x, y, x+len/2, y-len, x+len, y); 
  } else
  {
   sierpinski(x, y, len/2);
   sierpinski(x+len/2, y, len/2);
   sierpinski(x+len/4, y-len/2, len/2);
  }
}
