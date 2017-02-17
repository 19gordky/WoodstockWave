// based on https://www.openprocessing.org/sketch/152169
// https://creativecommons.org/licenses/by-sa/3.0/

float arcStart = PI;
float arcEnd = PI;
float maxArcEnd = TWO_PI;
float movement = 0.0;
float speed = PI/70;
int num = 19;
int x;
int x2;
void setup()
{
  size(800, 425);
  noFill();
  strokeWeight(7);
}
void draw()
{
  x = 750;
  x2 = 750;
  background(130, 0, 230);
  while (x >= 19 && x2 >= 19)
   {
    arcEnd = map(sin(movement + (maxArcEnd / num * x)), -1, 1, arcStart, maxArcEnd);
    arc(400, 400, x, x2, arcStart, arcEnd);
    x = x - 20;
    x2 = x2 - 20;
   }
  movement += speed;
}
