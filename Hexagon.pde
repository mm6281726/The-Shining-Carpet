class Hexagon{
  PShape h;
  float x,y,r;
  
  Hexagon(float _x, float _y, float _r){
    x = 3 * _x * _r;
    y = 2 * _y * _r;
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
    translate(x,y);
    shape(h);
    popMatrix();
  }
}
