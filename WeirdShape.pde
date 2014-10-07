class WeirdShape{
  PShape h;
  float x,y,r;
  
  WeirdShape(float _x, float _y, float _r){
    x = _x * _r;
    y = _y * _r;
    r = _r;
    h = createShape();
    h.beginShape();
    h.fill(200,125,25);
    h.stroke(200,125,25);
    h.strokeWeight(2);
    float angle;
    for(int i = 0; i < 6; i++){
      angle = PI*i/3;
      h.vertex(cos(angle)*r, sin(angle)*r);
    }
    for(int i = 0; i < 6; i++){
      angle = PI*i/3;
      h.vertex(cos(angle)*(r-(r/4)), sin(angle)*(r-(r/4)));
    }
    h.endShape(CLOSE);
  }
  
  void display(){
    pushMatrix();    
    if((y/r) % 2 == 0){
      translate(r+2*x,2*y);
    }else{
      translate(2*x,2*y-r);
    }
    rotate(radians(90));
    shape(h);
    popMatrix();
  }
}

