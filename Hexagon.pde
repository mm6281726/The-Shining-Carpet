class Hexagon{
  PShape h;
  float x,y,r;
  
  Hexagon(float _x, float _y, float _r){
    x = _x * _r;
    y = _y * _r;
    r = _r;
    h = createShape();
    h.beginShape();
    h.fill(200,25,25);
    h.stroke(200,25,25);
    h.strokeWeight(2);
    float angle;
    for(int i = 0; i < 6; i++){
      angle = PI*i/3;
      h.vertex(cos(angle)*r, sin(angle)*r);
    }
    h.endShape(CLOSE);
  }
  
  void display(){
    pushMatrix();    
    if((y/r) % 2 == 0){
      translate((2*r)+4*x,4*y);
    }else{
      translate(4*x,4*y-2*r);
    }
    rotate(radians(90));
    shape(h);
    popMatrix();
  }
}

