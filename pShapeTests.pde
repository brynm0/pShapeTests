ArrayList<PVector> pointData;
float x, y, z;
Table points;
void setup() {
  size (100, 100, P3D);
    pointData = new ArrayList<PVector>();

  points = loadTable("pointInfo.csv", "header");
  for (int i = 0; i < points.getRowCount(); i++) {
    TableRow row = points.getRow(i);
    x = row.getFloat("x");
    y = row.getFloat("y");
    z = row.getFloat("z");
    PVector tempVector = new PVector(x, y, z);
    pointData.add(tempVector);
  }
}
void draw() {
  for (int i = 0; i < pointData.size(); i++) {
    println(pointData.get(i));
  }
  noLoop();
}