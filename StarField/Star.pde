class Star {
  float x;
  float y;
  float z;
  
  float pz; // previous Z

  Star() {
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    z = random(width);
  }
  
  void update() {
    z = z - speed;
    if (z < abs(x) || z < abs(y)) { // reduce recycling delays while x or y spin way beyond width or height
      z = width;
      x = random(-width, width);
      y = random(-height, height);
      pz = z;
      
    }
  }
  
  void display() {
    fill(255);
    noStroke();
    
    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, height);
    
    float r = map(z, 0, width, 16, 0); // Re-maps a Z from one range to another
    //ellipse(sx, sy, r, r);
    
    float px = map(x / pz, 0, 1, 0, width);
    float py = map(y / pz, 0, 1, 0, height);
    
    pz = z;
    
    //stroke(255);
    stroke(map(z,width,0,0,255)); //Changing the colour of each star from white to a shade of grey according to distance.
    line(px, py, sx, sy);
    
   
  }
}
