Hexagon[][] grid;
int cols = 2;
int rows = 2;

void setup(){
  size(640, 360, P2D);
  grid = new Hexagon[cols][rows];
  float radius = (width/cols)/2;
  for(int i = 0; i < cols; i++){
    for(int j = 0; j < rows; j++){
      grid[i][j] = new Hexagon(i, j, radius);
    }
  }
}

void draw(){
  background(0);
  float radius = width/cols;
  for(int i = 0; i < cols; i++){
    for(int j = 0; j < rows; j++){
      grid[i][j].display();
    }
  }
}
