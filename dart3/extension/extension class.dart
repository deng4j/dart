class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);
}

extension RectangleExtension on Rectangle {
  /// 计算矩形的面积
  double get area {
    return width * height;
  }
}

void main() {
  Rectangle rectangle = Rectangle(5, 3);
  print(rectangle.area); // 输出：15.0
}
