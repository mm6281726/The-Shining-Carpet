Hexagon[][] hexGrid;
WeirdShape[][] shGrid;
int cols = 16;
int rows = 16;

void setup(){
  size(1280, 720, P2D);
  hexGrid = new Hexagon[cols][rows];
  shGrid = new WeirdShape[cols][rows];
  float radius = (width/cols);
  for(int i = 0; i < cols; i++){
    for(int j = 0; j < rows; j++){
      hexGrid[i][j] = new Hexagon(i, j, radius/2);
      shGrid[i][j] = new WeirdShape(i, j, radius);
    }
  }
}

void draw(){
  background(0);
  float radius = width/cols;
  for(int i = 0; i < cols; i++){
    for(int j = 0; j < rows; j++){
      shGrid[i][j].display();
      hexGrid[i][j].display();
    }
  }
}
