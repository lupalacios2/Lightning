int startY = 0;
int startX = (int)(Math.random() * 200) + 50;
int endY = 0;
int endX = (int)(Math.random() * 200) + 50;

void setup() {
  size(300, 300);
  background(0, 0, 0);
  strokeWeight(6);
}

void draw() {
  cloud();
  
  color yellow = color((int)(Math.random() * 50 + 200), (int)(Math.random() * 50 + 200), (int)(Math.random() * 50 + 150));
  stroke(yellow);
  
  while (endY < 300) {
    endY = startY + (int)(Math.random() * 9);
    endX = startX + (int)((Math.random() * 18) - 9);

    line(startX, startY, endX, endY);
    
    startY = endY;
    startX = endX;
  }
}

void cloud() {
  color gray = color(128,128,128);
  noStroke();
  fill(gray);
  
  ellipse(150, 0, 200, 100);
  ellipse(150, 40, 60, 60);
  ellipse(100, 25, 60, 60);
  ellipse(200, 25, 60, 60);
}
  
void mousePressed() {
  startY = 0;
  startX = (int)(Math.random() * 200) + 50;
  endY = 0;
  endX = (int)(Math.random() * 200) + 50;
  
  background(0, 0, 0);
}
