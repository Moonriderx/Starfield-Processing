Star[] starsArray = new Star[4000];

float speed;
void setup() {
  
  size(1600, 1600);
  for (int i = 0; i < starsArray.length; i++) {
    starsArray[i] = new Star();
  }
  
}

void draw() {
 speed = map(mouseX, 0, width, 0, 50);
 background(0); // space is black, so 0
 translate(width/2, height/2);
 for (int i = 0; i < starsArray.length; i++) {
    starsArray[i].update();
    starsArray[i].display();
  }
  
}
